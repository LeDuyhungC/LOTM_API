import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                material_id,
                name,
                description,
                rarity
            FROM materials
            ORDER BY material_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching materials:', error);
        response.status(500).json({
            error: 'Failed to retrieve materials from the database.',
        });
    }
};

export { getAll };
