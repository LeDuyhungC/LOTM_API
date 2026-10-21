import { Request, Response } from 'express';
import pool from '../../db';

const getSequences = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid pathway ID. Must be a positive integer.' });
            return;
        }

        // Fetch pathway info
        const pathwayResult = await pool.query(`
            SELECT 
                p.pathway_id,
                p.names,
                p.color,
                p.description,
                s.name AS sefirot_name
            FROM pathways p
            JOIN sefirots s ON p.sefirot_id = s.sefirot_id
            WHERE p.pathway_id = $1
        `, [id]);

        if (pathwayResult.rowCount === 0) {
            response.status(404).json({ error: `Pathway with id ${id} not found.` });
            return;
        }

        // Fetch all sequences ordered from Sequence 9 (low) to Sequence 0 (True God)
        const sequencesResult = await pool.query(`
            SELECT 
                sequence_id,
                position,
                name,
                description
            FROM sequences
            WHERE pathway_id = $1
            ORDER BY position DESC
        `, [id]);

        response.status(200).json({
            pathway: pathwayResult.rows[0],
            sequence_count: sequencesResult.rowCount,
            sequences: sequencesResult.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching pathway sequences:', error);
        response.status(500).json({
            error: 'Failed to retrieve pathway sequences from the database.',
        });
    }
};

export { getSequences };
