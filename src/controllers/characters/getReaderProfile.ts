import { Request, Response } from 'express';
import pool from '../../db';

interface ReaderQueryParams {
    chapter?: string;
}

const getReaderProfile = async (
    request: Request<{ id: string }, any, any, ReaderQueryParams>,
    response: Response
): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid character ID. Must be a positive integer.' });
            return;
        }

        const chapterNumber = request.query.chapter ? parseInt(request.query.chapter, 10) : null;
        if (request.query.chapter && isNaN(chapterNumber as number)) {
            response.status(400).json({ error: 'Invalid chapter query parameter. Must be an integer.' });
            return;
        }

        // If a chapter is passed, find its chapter_id; otherwise use a large number (latest)
        let targetChapterId: number | null = null;
        let queriedChapterNumber: number | null = chapterNumber;

        if (chapterNumber !== null) {
            const chResult = await pool.query(`
                SELECT chapter_id, chapter_number 
                FROM chapters 
                WHERE volume_id <= 8 AND chapter_number = $1
                LIMIT 1
            `, [chapterNumber]);

            if (chResult.rowCount === 0) {
                response.status(404).json({ error: `Chapter ${chapterNumber} does not exist in the database.` });
                return;
            }
            targetChapterId = chResult.rows[0].chapter_id;
        }

        // 1. Fetch character with spoiler-proof life status
        const charResult = await pool.query(`
            SELECT
                c.character_id,
                c.first_name,
                c.last_name,
                CONCAT(c.first_name, ' ', c.last_name) AS full_name,
                c.description,
                CASE 
                    WHEN c.death_chapter_id IS NOT NULL AND ($2::int IS NULL OR death_ch.chapter_number <= $2)
                        THEN 'Deceased'
                    ELSE 'Alive'
                END AS life_status,
                CASE 
                    WHEN c.death_chapter_id IS NOT NULL AND ($2::int IS NULL OR death_ch.chapter_number <= $2)
                        THEN c.death_event
                    ELSE NULL 
                END AS death_event,
                CASE 
                    WHEN c.death_chapter_id IS NOT NULL AND ($2::int IS NULL OR death_ch.chapter_number <= $2)
                        THEN death_ch.chapter_number
                    ELSE NULL 
                END AS death_at_chapter
            FROM characters c
            LEFT JOIN chapters death_ch ON c.death_chapter_id = death_ch.chapter_id
            WHERE c.character_id = $1
        `, [id, queriedChapterNumber]);

        if (charResult.rowCount === 0) {
            response.status(404).json({ error: `Character with id ${id} not found.` });
            return;
        }

        const charData = charResult.rows[0];

        // 2. Fetch active sequence as of this chapter
        const seqResult = await pool.query(`
            SELECT 
                s.sequence_id,
                s.name AS sequence_name,
                s.position,
                s.description AS sequence_description,
                p.names[1] AS pathway_name,
                start_ch.chapter_number AS sequence_started_at_chapter
            FROM char_seq_chapter_range csc
            JOIN sequences s ON csc.sequence_id = s.sequence_id
            JOIN pathways p ON s.pathway_id = p.pathway_id
            LEFT JOIN chapters start_ch ON csc.chapter_start_id = start_ch.chapter_id
            WHERE csc.character_id = $1
              AND ($2::int IS NULL OR csc.chapter_start_id IS NULL OR csc.chapter_start_id <= $2)
              AND ($2::int IS NULL OR csc.chapter_end_id IS NULL OR csc.chapter_end_id >= $2)
            ORDER BY s.position ASC
            LIMIT 1
        `, [id, targetChapterId]);

        // 3. Fetch active factions as of this chapter
        const facResult = await pool.query(`
            SELECT 
                f.faction_id,
                f.name AS faction_name,
                cfc.role,
                start_ch.chapter_number AS joined_at_chapter
            FROM char_fac_chapter_range cfc
            JOIN factions f ON cfc.faction_id = f.faction_id
            LEFT JOIN chapters start_ch ON cfc.chapter_start_id = start_ch.chapter_id
            WHERE cfc.character_id = $1
              AND ($2::int IS NULL OR cfc.chapter_start_id IS NULL OR cfc.chapter_start_id <= $2)
              AND ($2::int IS NULL OR cfc.chapter_end_id IS NULL OR cfc.chapter_end_id >= $2)
            ORDER BY f.name ASC
        `, [id, targetChapterId]);

        // 4. Fetch active artifacts possessed as of this chapter
        const artResult = await pool.query(`
            SELECT 
                a.artifact_id,
                a.name AS artifact_name,
                a.code_name,
                a.description AS artifact_description,
                car.acquisition_type,
                start_ch.chapter_number AS acquired_at_chapter
            FROM char_art_chapter_range car
            JOIN artifacts a ON car.artifact_id = a.artifact_id
            LEFT JOIN chapters start_ch ON car.chapter_start_id = start_ch.chapter_id
            WHERE car.character_id = $1
              AND ($2::int IS NULL OR car.chapter_start_id IS NULL OR car.chapter_start_id <= $2)
              AND ($2::int IS NULL OR car.chapter_end_id IS NULL OR car.chapter_end_id >= $2)
            ORDER BY a.name ASC
        `, [id, targetChapterId]);

        response.status(200).json({
            meta: {
                queried_chapter: queriedChapterNumber ?? 'latest (unfiltered)',
                spoiler_protection_enabled: queriedChapterNumber !== null,
            },
            data: {
                ...charData,
                current_sequence: seqResult.rows[0] || null,
                active_factions: facResult.rows,
                possessed_artifacts: artResult.rows,
            },
        });
    } catch (error) {
        console.error('❌ Error fetching reader companion profile:', error);
        response.status(500).json({
            error: 'Failed to retrieve spoiler-proof character profile from the database.',
        });
    }
};

export { getReaderProfile };
