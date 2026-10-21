import { Request, Response } from 'express';
import pool from '../../db';

const getNeighboring = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid pathway ID. Must be a positive integer.' });
            return;
        }

        // Fetch the current pathway and its Sefirot
        const pathwayResult = await pool.query(`
            SELECT 
                p.pathway_id,
                p.names,
                p.color,
                p.description,
                s.sefirot_id,
                s.name AS sefirot_name,
                s.description AS sefirot_description
            FROM pathways p
            JOIN sefirots s ON p.sefirot_id = s.sefirot_id
            WHERE p.pathway_id = $1
        `, [id]);

        if (pathwayResult.rowCount === 0) {
            response.status(404).json({ error: `Pathway with id ${id} not found.` });
            return;
        }

        const pathway = pathwayResult.rows[0];

        // Fetch other pathways sharing the same Sefirot
        const neighboringResult = await pool.query(`
            SELECT 
                p.pathway_id,
                p.names,
                p.color,
                p.description
            FROM pathways p
            WHERE p.sefirot_id = $1 AND p.pathway_id != $2
            ORDER BY p.pathway_id ASC
        `, [pathway.sefirot_id, id]);

        response.status(200).json({
            pathway: {
                pathway_id: pathway.pathway_id,
                names: pathway.names,
                color: pathway.color,
                description: pathway.description,
            },
            governing_sefirot: {
                sefirot_id: pathway.sefirot_id,
                name: pathway.sefirot_name,
                description: pathway.sefirot_description,
            },
            switchable_at_high_sequence: true,
            lore_note: 'In the Lord of the Mysteries universe, Beyonders who reach Sequence 4 (Demigod) or higher can safely switch between neighboring pathways under the same Sefirot without losing control or causing uncontrollable mutation.',
            neighboring_pathways: neighboringResult.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching neighboring pathways:', error);
        response.status(500).json({
            error: 'Failed to retrieve neighboring pathways from the database.',
        });
    }
};

export { getNeighboring };
