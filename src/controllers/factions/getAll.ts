import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                faction_id,
                name,
                description
            FROM factions
            ORDER BY faction_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching factions:', error);
        response.status(500).json({
            error: 'Failed to retrieve factions from the database.',
        });
    }
};

export { getAll };
