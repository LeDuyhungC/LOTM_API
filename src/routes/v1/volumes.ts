import { Router } from 'express';
import { getAll } from '../../controllers/volumes/getAll';
import { getById } from '../../controllers/volumes/getById';

const volumesRouter = Router();

volumesRouter.get('/volumes', getAll);
volumesRouter.get('/volumes/:id', getById);

export { volumesRouter };