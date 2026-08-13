import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                sefirot_id,
                name,
                great_old_one,
                description
            FROM sefirot
            ORDER BY sefirot_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching series:', error);
        response.status(500).json({
            error: 'Failed to retrieve series from the database.',
        });
    }
};

export { getAll };