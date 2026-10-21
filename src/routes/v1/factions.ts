import { Router } from 'express';
import { getAll } from '../../controllers/factions/getAll';
import { getById } from '../../controllers/factions/getById';
import { getMembers } from '../../controllers/factions/getMembers';

const factionsRouter = Router();

factionsRouter.get('/factions', getAll);
factionsRouter.get('/factions/:id', getById);
factionsRouter.get('/factions/:id/members', getMembers);

export { factionsRouter };