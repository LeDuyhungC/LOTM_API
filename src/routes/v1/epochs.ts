import { Router } from 'express';
import { getAll } from '../../controllers/epochs/getAll';
import { getById } from '../../controllers/epochs/getById';

const epochsRouter = Router();

epochsRouter.get('/epochs', getAll);
epochsRouter.get('/epochs/:id', getById);

export { epochsRouter };