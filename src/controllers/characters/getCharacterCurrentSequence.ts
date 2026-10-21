import { Request, Response } from 'express';
import pool from '../../db';

let getCharacterPresentSequence = async (request: Request<{ name: string }>, response: Response): Promise<void> => {
    try {
        const { name } = request.params;

        let result = await pool.query(`
            SELECT
                c.character_id,
                c.first_name,
                c.last_name,
                CONCAT(c.first_name, ' ', c.last_name) as full_name,
                s.name AS sequence_name,
                s.sequence_id,
                s.description AS sequence_description,
                p.names[1] AS pathway_name,
                p.description AS pathway_description,
                p.symbol

            FROM
                characters AS c
            LEFT JOIN char_seq_chapter_range AS csc
                ON c.character_id = csc.character_id AND csc.chapter_end_id IS NULL
            LEFT JOIN sequences AS s
                ON csc.sequence_id = s.sequence_id
            LEFT JOIN pathways AS p
                ON s.pathway_id = p.pathway_id
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
        response.status(200).json({ data: result.rows[0] });
    } catch (error) {
        console.error('❌ Error fetching character current sequence:', error);
        response.status(500).json({
            error: 'Failed to retrieve character current sequence from the database',
        });
    };
};

export { getCharacterPresentSequence };