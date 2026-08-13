import { Request, Response } from 'express';
import pool from '../../db';

const getById = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);

        const result = await pool.query(`
            SELECT
                character_id,
                name,
                description,
                volume_start_id,
                volume_end_id
            FROM alias
            WHERE alias_id = $1
            `, [id]);

        if (result.rowCount === 0) {
            response.status(404).json({
                error: `Alias with id ${id} not found`,
            });
            return;
        }

        response.status(200).json({
            data: result.rows[0],
        });
    } catch (error) {
        console.error('❌ Error fetching alias:', error);
        response.status(500).json({
            error: 'Failed to retrieve alias from the database.',
        });
    }
};

export { getById };