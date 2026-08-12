import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                location_id,
                name,
                region,
                description,
                parent_location_id,
                epoch_start_id,
                epoch_end_id
            FROM location
            ORDER BY location_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching locations:', error);
        response.status(500).json({
            error: 'Failed to retrieve locations from the database.',
        });
    }
};

export { getAll };
