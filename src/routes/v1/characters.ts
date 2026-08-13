import { Router } from 'express';
import { getAll } from '../../controllers/characters/getAll';
import { getById } from '../../controllers/characters/getById';

const charactersRouter = Router();

charactersRouter.get('/characters', getAll);
charactersRouter.get('/characters/:id', getById);

export { charactersRouter };