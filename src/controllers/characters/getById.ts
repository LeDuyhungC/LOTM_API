import { Request, Response } from 'express';
import pool from '../../db';

const getById = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid ID. Must be a positive integer.' });
            return;
        }

        const result = await pool.query(`
            SELECT
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
            WHERE character_id = $1
            ORDER BY name ASC
            `, [id]);

        if (result.rowCount === 0) {
            response.status(404).json({
                error: `Character with ${id} was not found`,
            });
            return;
        }

        response.status(200).json({
            data: result.rows[0],
        });
    } catch (error) {
        console.error('❌ Error fetching character:', error);
        response.status(500).json({
            error: 'Failed to retrieve character from the database.',
        });
    }
};

export { getById };