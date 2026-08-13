import { Router } from 'express';
import { getAll } from '../../controllers/series/getAll';
import { getById } from '../../controllers/series/getById';

const seriesRouter = Router();

seriesRouter.get('/series', getAll);
seriesRouter.get('/series/:id', getById);

export { seriesRouter };