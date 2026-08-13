import { Router } from 'express';
import { getAll } from '../../controllers/factions/getAll';
import { getById } from '../../controllers/factions/getById';

const factionsRouter = Router();

factionsRouter.get('/factions', getAll);
factionsRouter.get('/factions/:id', getById);

export { factionsRouter };