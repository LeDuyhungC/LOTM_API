import { Router } from 'express';
import { getAll } from '../../controllers/characters/getAll';
import { getById } from '../../controllers/characters/getById';
import { getReaderProfile } from '../../controllers/characters/getReaderProfile';
import { getTimeline } from '../../controllers/characters/getTimeline';
import { getCharacterPresentSequence } from '../../controllers/characters/getCharacterCurrentSequence';
import { getOrigin } from '../../controllers/characters/getOrigin';

const charactersRouter = Router();

// Specific and nested routes first
charactersRouter.get('/characters/name/:name/sequence', getCharacterPresentSequence);
charactersRouter.get('/characters/name/:name/origin', getOrigin);
charactersRouter.get('/characters/:id/reader-profile', getReaderProfile);
charactersRouter.get('/characters/:id/timeline', getTimeline);

// Standard collection and single resource routes
charactersRouter.get('/characters', getAll);
charactersRouter.get('/characters/:id', getById);

export { charactersRouter };