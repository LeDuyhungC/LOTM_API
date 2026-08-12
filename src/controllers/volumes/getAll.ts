import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                volume_id,
                series_id,
                volume_number,
                title
            FROM volume
            ORDER BY volume_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching volumes:', error);
        response.status(500).json({
            error: 'Failed to retrieve volumes from the database.',
        });
    }
};

export { getAll };
