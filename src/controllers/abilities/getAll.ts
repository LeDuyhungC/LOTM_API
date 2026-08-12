import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                ability_id,
                sequence_id,
                name,
                type,
                description
            FROM abilities
            ORDER BY ability_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching abilities:', error);
        response.status(500).json({
            error: 'Failed to retrieve abilities from the database.',
        });
    }
};

export { getAll };
