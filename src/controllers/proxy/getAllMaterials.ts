import { Request, Response } from 'express';
import pool from '../../db';

const getAllMaterials = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                material_id,
                name,
                description,
                rarity
            FROM material
            ORDER BY material_id ASC

        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        })
    } catch (error) {
        console.error('❌ Error fetching materials:', error);
        response.status(500).json({
            error: 'Failed to retrieve series from the database.',
        });
    }

};

export { getAllMaterials }