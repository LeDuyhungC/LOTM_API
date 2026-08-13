import { Router } from 'express';
import { getAll } from '../../controllers/sefirots/getAll';
import { getById } from '../../controllers/sefirots/getById';

const sefirotsRouter = Router();

sefirotsRouter.get('/sefirots', getAll);
sefirotsRouter.get('/sefirots/:id', getById);

export { sefirotsRouter };