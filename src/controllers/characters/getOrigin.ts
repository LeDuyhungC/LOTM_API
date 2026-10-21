import { Request, Response } from 'express';
import pool from '../../db';

let getOrigin = async (request: Request<{ name: string }>, response: Response): Promise<void> => {

    try {

        const { name } = request.params;

        let result = await pool.query(`
            SELECT
                c.character_id,
                c.first_name,
                c.last_name,
                CONCAT(c.first_name, ' ', c.last_name) AS full_name,
                c.birth_epoch_id,
                c.birth_year,
                c.description,
                l.name AS location_name,
                l.region AS location_region
            FROM
                characters AS c
            LEFT JOIN locations AS l
                ON c.origin_location_id = l.location_id
            WHERE
                LOWER(CONCAT(c.first_name, ' ', c.last_name)) = LOWER($1)
                OR LOWER(c.first_name) = LOWER($1)
                OR LOWER(c.last_name) = LOWER($1)

            LIMIT 1;
            `, [name.trim()]
        );

        if (result.rowCount === 0) {
            response.status(404).json({ error: `There are no characters named "${name}" in database` });
            return;
        }

        response.status(200).json({
            data: result.rows[0],
        });
    } catch (error) {
        console.error('❌ Error fetching character origin:', error);
        response.status(500).json({
            error: 'Failed to retrieve character origin from the database',
        });
    }
};

export { getOrigin };