import { Request, Response } from 'express';
import pool from '../../db';

const getById = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);

        const result = await pool.query(`
            SELECT
                series_id,
                volumes_number,
                title
            FROM volumes
            WHERE volume_id = $1
            `, [id]
        );

        if (result.rowCount === 0) {
            response.status(404).json({
                error: `Volume ${id} not found`,
            });
            return;
        }

        response.status(200).json({
            data: result.rows[0],
        });
    } catch (error) {
        console.error(`❌ Error fetching volume:`, error);
        response.status(500).json({
            error: `Failed to retieve volume from the database.`,
        });
    }
};

export { getById };