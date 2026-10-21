import { Request, Response } from 'express';
import pool from '../../db';

const getRecipe = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid Sequence ID. Must be a positive integer.' });
            return;
        }

        // Fetch sequence details
        const seqResult = await pool.query(`
            SELECT 
                s.sequence_id,
                s.name AS sequence_name,
                s.position,
                s.description AS sequence_description,
                p.pathway_id,
                p.names[1] AS pathway_name
            FROM sequences s
            JOIN pathways p ON s.pathway_id = p.pathway_id
            WHERE s.sequence_id = $1
        `, [id]);

        if (seqResult.rowCount === 0) {
            response.status(404).json({ error: `Sequence with id ${id} not found.` });
            return;
        }

        // Fetch ingredients for this sequence
        const materialsResult = await pool.query(`
            SELECT 
                m.material_id,
                m.name AS material_name,
                m.rarity,
                m.description AS material_description,
                sm.quantity,
                sm.unit
            FROM sequence_material sm
            JOIN materials m ON sm.material_id = m.material_id
            WHERE sm.sequence_id = $1
            ORDER BY m.rarity DESC, m.name ASC
        `, [id]);

        response.status(200).json({
            sequence: seqResult.rows[0],
            ingredients_count: materialsResult.rowCount,
            ingredients: materialsResult.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching sequence recipe:', error);
        response.status(500).json({
            error: 'Failed to retrieve sequence recipe from the database.',
        });
    }
};

export { getRecipe };
