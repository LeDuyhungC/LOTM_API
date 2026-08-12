import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                epoch_id,
                name,
                start_year,
                end_year,
                description
            FROM epochs
            ORDER BY epoch_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching epochs:', error);
        response.status(500).json({
            error: 'Failed to retrieve epochs from the database.',
        });
    }
};

export { getAll };
