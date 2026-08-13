import { Request, Response } from 'express';
import pool from '../../db';

const getById = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);

        const result = await pool.query(`
            SELECT
                name,
                great_old_one,
                description
            FROM sefirot
            WHERE sefirot_id = $1
            `, [id]);

        if (result.rowCount === 0) {
            response.status(404).json({
                error: `Sefirot with id ${id} not found`,
            });
            return;
        }

        response.status(200).json({
            data: result.rows[0],
        });
    } catch (error) {
        console.error('❌ Error fetching sefirot:', error);
        response.status(500).json({
            error: 'Failed to retrieve sefirot from the database.',
        });
    }
};

export { getById };
