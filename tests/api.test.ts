import request from 'supertest';
import app from '../src/app';
import pool from '../src/db';

describe('LOTM API Integration Tests', () => {
  afterAll(async () => {
    // Close DB pool connections so Jest exits cleanly
    await pool.end();
  });

  describe('Health & Status Endpoints', () => {
    it('GET /status should return 200 with service message', async () => {
      const res = await request(app).get('/status');
      expect(res.status).toBe(200);
      expect(res.body.message).toContain('LOTM API is running');
    });

    it('GET /invalid-route should return 404 with JSON error', async () => {
      const res = await request(app).get('/invalid-route');
      expect(res.status).toBe(404);
      expect(res.body.error).toBeDefined();
    });
  });

  describe('Character Endpoints', () => {
    it('GET /v1/characters should return a list of characters', async () => {
      const res = await request(app).get('/v1/characters');
      expect(res.status).toBe(200);
      expect(res.body.count).toBeGreaterThan(0);
      expect(Array.isArray(res.body.data)).toBe(true);
    });

    it('GET /v1/characters/1 should return Klein / Zhou Mingrui', async () => {
      const res = await request(app).get('/v1/characters/1');
      expect(res.status).toBe(200);
      expect(res.body.data.first_name).toBe('Zhou');
      expect(res.body.data.last_name).toBe('Mingrui');
    });

    it('GET /v1/characters/1/reader-profile?chapter=100 should apply spoiler filtering', async () => {
      const res = await request(app).get('/v1/characters/1/reader-profile?chapter=100');
      expect(res.status).toBe(200);
      expect(res.body.meta.queried_chapter).toBe(100);
      expect(res.body.data.current_sequence.sequence_name).toBe('Seer');
      expect(res.body.data.life_status).toBe('Alive');
    });

    it('GET /v1/characters/1/timeline should return progression timeline', async () => {
      const res = await request(app).get('/v1/characters/1/timeline');
      expect(res.status).toBe(200);
      expect(Array.isArray(res.body.sequence_timeline)).toBe(true);
      expect(res.body.sequence_timeline.length).toBeGreaterThan(0);
    });
  });

  describe('Sequence & Potion Recipe Endpoints', () => {
    it('GET /v1/sequences/1/recipe should return Seer potion ingredients', async () => {
      const res = await request(app).get('/v1/sequences/1/recipe');
      expect(res.status).toBe(200);
      expect(res.body.sequence.sequence_name).toBe('Seer');
      expect(res.body.ingredients_count).toBeGreaterThan(0);
      expect(Array.isArray(res.body.ingredients)).toBe(true);
    });
  });

  describe('Pathway Endpoints', () => {
    it('GET /v1/pathways/1/neighboring should return Door and Error under Sefirah Castle', async () => {
      const res = await request(app).get('/v1/pathways/1/neighboring');
      expect(res.status).toBe(200);
      expect(res.body.governing_sefirot.name).toBe('Sefirah Castle');
      expect(res.body.neighboring_pathways.length).toBe(2);
    });

    it('GET /v1/pathways/1/sequences should return all 10 sequences from Seq 9 to Seq 0', async () => {
      const res = await request(app).get('/v1/pathways/1/sequences');
      expect(res.status).toBe(200);
      expect(res.body.sequence_count).toBe(10);
      expect(res.body.sequences[0].position).toBe(9); // Seer
      expect(res.body.sequences[9].position).toBe(0); // The Fool
    });
  });

  describe('Artifact Endpoints', () => {
    it('GET /v1/artifacts/9/abilities should return Creeping Hunger abilities and bearers', async () => {
      const res = await request(app).get('/v1/artifacts/9/abilities');
      expect(res.status).toBe(200);
      expect(res.body.artifact.name).toBe('Creeping Hunger');
      expect(res.body.abilities_count).toBeGreaterThan(0);
      expect(res.body.known_bearers.length).toBeGreaterThan(0);
    });
  });

  describe('Faction Endpoints', () => {
    it('GET /v1/factions/1/members should return Tarot Club members', async () => {
      const res = await request(app).get('/v1/factions/1/members');
      expect(res.status).toBe(200);
      expect(res.body.faction.name).toBe('Tarot Club');
      expect(res.body.member_count).toBeGreaterThan(0);
    });
  });
});
