import { Request, Response } from 'express';
import pool from '../../db';

interface ChapterQueryParams {
    limit?: string;
    offset?: string;
}

const getAll = async (request: Request<any, any, any, ChapterQueryParams>, response: Response): Promise<void> => {
    try {
        const limit = parseInt(request.query.limit || '100', 10);
        const offset = parseInt(request.query.offset || '0', 10);

        const result = await pool.query(`
            SELECT
                chapter_id,
                volume_id,
                chapter_number,
                title
            FROM chapters
            ORDER BY chapter_id ASC
            LIMIT $1 OFFSET $2
        `, [limit, offset]);

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
