import { Request, Response } from 'express';
import pool from '../../db';

const getAll = async (_request: Request, response: Response): Promise<void> => {
    try {
        const result = await pool.query(`
            SELECT
                sequence_id,
                pathway_id,
                position,
                name,
                description
            FROM sequences
            ORDER BY sequence_id ASC
        `);

        response.status(200).json({
            count: result.rowCount,
            data: result.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching sequences:', error);
        response.status(500).json({
            error: 'Failed to retrieve sequences from the database.',
        });
    }
};

export { getAll };
