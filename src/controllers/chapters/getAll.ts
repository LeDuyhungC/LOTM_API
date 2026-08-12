import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                chapter_id,
                volume_id,
                chapter_number,
                title
            FROM chapter
            ORDER BY chapter_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching chapters:', error);
        response.status(500).json({
            error: 'Failed to retrieve chapters from the database.',
        });
    }
};

export { getAll };
