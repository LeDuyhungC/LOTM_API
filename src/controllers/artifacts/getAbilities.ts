import { Request, Response } from 'express';
import pool from '../../db';

const getAbilities = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid artifact ID. Must be a positive integer.' });
            return;
        }

        // Fetch artifact details
        const artifactResult = await pool.query(`
            SELECT 
                artifact_id,
                name,
                code_name,
                description
            FROM artifacts
            WHERE artifact_id = $1
        `, [id]);

        if (artifactResult.rowCount === 0) {
            response.status(404).json({ error: `Artifact with id ${id} not found.` });
            return;
        }

        // Fetch abilities granted by this artifact
        const abilitiesResult = await pool.query(`
            SELECT 
                ab.ability_id,
                ab.name AS ability_name,
                ab.type AS ability_type,
                ab.description AS ability_description,
                s.name AS source_sequence_name,
                p.names[1] AS source_pathway_name
            FROM artifact_ability aa
            JOIN abilities ab ON aa.ability_id = ab.ability_id
            JOIN sequences s ON ab.sequence_id = s.sequence_id
            JOIN pathways p ON s.pathway_id = p.pathway_id
            WHERE aa.artifact_id = $1
            ORDER BY ab.name ASC
        `, [id]);

        // Fetch known owners / bearers across the story
        const bearersResult = await pool.query(`
            SELECT 
                c.character_id,
                CONCAT(c.first_name, ' ', c.last_name) AS character_name,
                car.acquisition_type,
                start_ch.chapter_number AS acquired_at_chapter,
                end_ch.chapter_number AS lost_or_upgraded_at_chapter
            FROM char_art_chapter_range car
            JOIN characters c ON car.character_id = c.character_id
            LEFT JOIN chapters start_ch ON car.chapter_start_id = start_ch.chapter_id
            LEFT JOIN chapters end_ch ON car.chapter_end_id = end_ch.chapter_id
            WHERE car.artifact_id = $1
            ORDER BY start_ch.chapter_number ASC NULLS FIRST
        `, [id]);

        response.status(200).json({
            artifact: artifactResult.rows[0],
            abilities_count: abilitiesResult.rowCount,
            granted_abilities: abilitiesResult.rows,
            known_bearers: bearersResult.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching artifact abilities:', error);
        response.status(500).json({
            error: 'Failed to retrieve artifact abilities from the database.',
        });
    }
};

export { getAbilities };
