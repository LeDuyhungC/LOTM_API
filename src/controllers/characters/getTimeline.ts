import { Request, Response } from 'express';
import pool from '../../db';

const getTimeline = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid character ID. Must be a positive integer.' });
            return;
        }

        // Fetch character basics
        const charResult = await pool.query(`
            SELECT 
                c.character_id,
                CONCAT(c.first_name, ' ', c.last_name) AS full_name,
                c.death_chapter_id,
                death_ch.chapter_number AS death_chapter,
                c.death_event
            FROM characters c
            LEFT JOIN chapters death_ch ON c.death_chapter_id = death_ch.chapter_id
            WHERE c.character_id = $1
        `, [id]);

        if (charResult.rowCount === 0) {
            response.status(404).json({ error: `Character with id ${id} not found.` });
            return;
        }

        // 1. Sequence progression history
        const sequencesResult = await pool.query(`
            SELECT 
                s.position,
                s.name AS sequence_name,
                p.names[1] AS pathway_name,
                start_ch.chapter_number AS start_chapter,
                end_ch.chapter_number AS end_chapter
            FROM char_seq_chapter_range csc
            JOIN sequences s ON csc.sequence_id = s.sequence_id
            JOIN pathways p ON s.pathway_id = p.pathway_id
            LEFT JOIN chapters start_ch ON csc.chapter_start_id = start_ch.chapter_id
            LEFT JOIN chapters end_ch ON csc.chapter_end_id = end_ch.chapter_id
            WHERE csc.character_id = $1
            ORDER BY s.position DESC
        `, [id]);

        // 2. Faction history
        const factionsResult = await pool.query(`
            SELECT 
                f.name AS faction_name,
                cfc.role,
                start_ch.chapter_number AS start_chapter,
                end_ch.chapter_number AS end_chapter
            FROM char_fac_chapter_range cfc
            JOIN factions f ON cfc.faction_id = f.faction_id
            LEFT JOIN chapters start_ch ON cfc.chapter_start_id = start_ch.chapter_id
            LEFT JOIN chapters end_ch ON cfc.chapter_end_id = end_ch.chapter_id
            WHERE cfc.character_id = $1
            ORDER BY start_ch.chapter_number ASC NULLS FIRST
        `, [id]);

        // 3. Artifact history
        const artifactsResult = await pool.query(`
            SELECT 
                a.name AS artifact_name,
                a.code_name,
                car.acquisition_type,
                start_ch.chapter_number AS acquired_at_chapter,
                end_ch.chapter_number AS lost_or_upgraded_at_chapter
            FROM char_art_chapter_range car
            JOIN artifacts a ON car.artifact_id = a.artifact_id
            LEFT JOIN chapters start_ch ON car.chapter_start_id = start_ch.chapter_id
            LEFT JOIN chapters end_ch ON car.chapter_end_id = end_ch.chapter_id
            WHERE car.character_id = $1
            ORDER BY start_ch.chapter_number ASC NULLS FIRST
        `, [id]);

        response.status(200).json({
            character: charResult.rows[0],
            sequence_timeline: sequencesResult.rows,
            faction_timeline: factionsResult.rows,
            artifact_timeline: artifactsResult.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching character timeline:', error);
        response.status(500).json({
            error: 'Failed to retrieve character timeline from the database.',
        });
    }
};

export { getTimeline };
