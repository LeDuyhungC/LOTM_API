import { Request, Response } from 'express';
import pool from '../../db';

const getByEpochStart = async (request: Request<{ epoch_start_id: string }>, response: Response): Promise<void> => {
    try {
        const epochStartId = parseInt(request.params.epoch_start_id);
        if (isNaN(epochStartId)) {
            response.status(400).json({ error: "The epoch_start_id needs to be a positive integer", });
            return;
        }
        const result = await pool.query(`
            SELECT
                name,
                region,
                description,
                epoch_end_id
            FROM location
            WHERE epoch_start_id = $1
            ORDER BY epoch_end_id
        `, [epochStartId]
        );

        if (result.rowCount === 0) {
            response.status(404).json({
                error: `No locations found starting at epoch ${epochStartId}`
            })
            return;
        }

        response.status(200).json({
            data: result.rows,
            count: result.rowCount
        })
    } catch (error) {
        console.error('❌ Error fetching locations:', error);
        response.status(500).json({
            error: "Failed to fetch locations."
        })
    }
}

export { getByEpochStart }