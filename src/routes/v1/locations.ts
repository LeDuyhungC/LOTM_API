import { Router } from 'express';
import { getAll } from '../../controllers/locations/getAll';
import { getById } from '../../controllers/locations/getById';

const locationsRouter = Router();

locationsRouter.get('/locations', getAll);
locationsRouter.get('/location/:id', getById);

export { locationsRouter };