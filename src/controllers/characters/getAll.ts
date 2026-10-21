import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                character_id,
                first_name,
                last_name,
                origin_location_id,
                birth_epoch_id,
                birth_year,
                death_epoch_id,
                death_year,
                death_event,
                death_chapter_id,
                description
            FROM characters
            ORDER BY character_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching characters:', error);
        response.status(500).json({
            error: 'Failed to retrieve characters from the database.',
        });
    }
};

export { getAll };
