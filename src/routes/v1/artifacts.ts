import { Router } from 'express';
import { getAll } from '../../controllers/artifacts/getAll';
import { getById } from '../../controllers/artifacts/getById';

const artifactsRouter = Router();

artifactsRouter.get('/artifacts', getAll);
artifactsRouter.get('/artifacts/:id', getById);

export { artifactsRouter };