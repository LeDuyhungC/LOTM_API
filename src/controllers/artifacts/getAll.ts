import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                artifact_id,
                name,
                description,
                code_name
            FROM artifacts
            ORDER BY artifact_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching artifacts:', error);
        response.status(500).json({
            error: 'Failed to retrieve artifacts from the database.',
        });
    }
};

export { getAll };
