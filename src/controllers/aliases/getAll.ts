import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                alias_id,
                character_id,
                name,
                description,
                volume_start_id,
                volume_end_id
            FROM alias
            ORDER BY alias_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching aliases:', error);
        response.status(500).json({
            error: 'Failed to retrieve aliases from the database.',
        });
    }
};

export { getAll };
