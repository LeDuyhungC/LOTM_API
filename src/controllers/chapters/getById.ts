import { Response, Request } from 'express';
import pool from '../../db';

const getById = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);

        const result = await pool.query(`
            SELECT
                volume_id,
                chapter_number,
                title
            FROM chapters
            WHERE chapter_id = $1
            `, [id]);

        if (result.rowCount === 0) {
            response.status(404).json({
                error: `Chapter with id ${id} not found`,
            });
            return;
        }

        response.status(200).json({
            data: result.rows[0],
        });
    } catch (error) {
        console.error('❌ Error fetching chapter:', error);
        response.status(500).json({
            error: 'Failed to retrieve chapter from the database.',
        });
    }
};

export { getById };