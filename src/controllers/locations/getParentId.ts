import { Response, Request } from "express";
import pool from '../../db';

const getByParentId = async (request: Request<{ parentId: string }>, response: Response): Promise<void> => {
    try {
        const parentId = parseInt(request.params.parentId, 10);
        if (isNaN(parentId)) {
            response.status(400).json({ error: 'Invalid parentId. Must be a positive integer.' });
            return;
        }
        const result = await pool.query(`
            SELECT
                name,
                description
                epoch_start_id,
                epoch_end_id
            FROM locations
            WHERE parent_location_id = $1
            `, [parentId]
        );

        if (result.rowCount === 0) {
            response.status(400).json({
                error: `Location parentId ${id} not found`,
            });
            return;
        }

        response.status(200).json({
            data: result.rows[0],
        });
    } catch (error) {
        console.error('❌ Error fetching location:', error);
        response.status(500).json({
            error: `Failed to retrieve location from the database.`,
        });
    }
};