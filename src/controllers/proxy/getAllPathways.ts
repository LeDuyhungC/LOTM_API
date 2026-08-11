import { Request, Response } from 'express';
import pool from '../../db';

const getAllPathways = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                pathway_id,
                name,
                color,
                symbol,
                description
            FROM pathways
            ORDER BY pathway_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching pathway', error);
        response.status(500).json({
            error: 'Failed to retrieve pathways from the database',
        })
    }
};

export { getAllPathways };