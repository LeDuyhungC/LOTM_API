import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                series_id,
                name,
                description,
                release_date,
                end_date
            FROM series
            ORDER BY series_id ASC
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
