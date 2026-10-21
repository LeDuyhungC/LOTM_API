import { Router } from 'express';
import { getAll } from '../../controllers/artifacts/getAll';
import { getById } from '../../controllers/artifacts/getById';
import { getAbilities } from '../../controllers/artifacts/getAbilities';

const artifactsRouter = Router();

artifactsRouter.get('/artifacts', getAll);
artifactsRouter.get('/artifacts/:id', getById);
artifactsRouter.get('/artifacts/:id/abilities', getAbilities);

export { artifactsRouter };