import { Request, Response } from 'express';
import pool from '../../db';
const getAllMembersInFactionById = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    const id = parseInt(request.params.id, 10);
    if (isNaN(id)) {
        response.status(400).json({ error: 'Invalid ID. Must be a positive integer.' });
        return;
    }
    try {
        const factionCheck = await pool.query(
            'SELECT name FROM factions WHERE faction_id = $1',
            [id]
        );
        if (factionCheck.rowCount === 0) {
            response.status(404).json({ error: `Faction with id ${id} not found` });
            return;
        }
        const result = await pool.query(`
            SELECT
                c.character_id,
                c.first_name,
                c.last_name,
                CONCAT_WS(' ', c.first_name, c.last_name) AS full_name,
                cfc.role,
                cfc.chapter_start_id,
                cfc.chapter_end_id
            FROM 
                char_fac_chapter_range AS cfc
            INNER JOIN characters AS c
                ON cfc.character_id = c.character_id
            WHERE 
                cfc.faction_id = $1
            ORDER BY 
                c.first_name ASC;
        `, [id]);
        response.status(200).json({
            faction: factionCheck.rows[0].name,
            total_members: result.rowCount,
            data: result.rows
        });
    } catch (error) {
        console.error('❌ Error fetching characters within the faction:', error);
        response.status(500).json({
            error: 'Failed to retrieve faction members from the database',
        });
    }
};
export { getAllMembersInFactionById };