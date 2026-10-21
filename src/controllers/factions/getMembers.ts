import { Request, Response } from 'express';
import pool from '../../db';

const getMembers = async (request: Request<{ id: string }>, response: Response): Promise<void> => {
    try {
        const id = parseInt(request.params.id, 10);
        if (isNaN(id)) {
            response.status(400).json({ error: 'Invalid faction ID. Must be a positive integer.' });
            return;
        }

        // Fetch faction info
        const factionResult = await pool.query(`
            SELECT 
                faction_id,
                name,
                description
            FROM factions
            WHERE faction_id = $1
        `, [id]);

        if (factionResult.rowCount === 0) {
            response.status(404).json({ error: `Faction with id ${id} not found.` });
            return;
        }

        // Fetch members of this faction
        const membersResult = await pool.query(`
            SELECT 
                c.character_id,
                CONCAT(c.first_name, ' ', c.last_name) AS full_name,
                cfc.role,
                start_ch.chapter_number AS joined_at_chapter,
                end_ch.chapter_number AS left_at_chapter
            FROM char_fac_chapter_range cfc
            JOIN characters c ON cfc.character_id = c.character_id
            LEFT JOIN chapters start_ch ON cfc.chapter_start_id = start_ch.chapter_id
            LEFT JOIN chapters end_ch ON cfc.chapter_end_id = end_ch.chapter_id
            WHERE cfc.faction_id = $1
            ORDER BY start_ch.chapter_number ASC NULLS FIRST
        `, [id]);

        response.status(200).json({
            faction: factionResult.rows[0],
            member_count: membersResult.rowCount,
            members: membersResult.rows,
        });
    } catch (error) {
        console.error('❌ Error fetching faction members:', error);
        response.status(500).json({
            error: 'Failed to retrieve faction members from the database.',
        });
    }
};

export { getMembers };
