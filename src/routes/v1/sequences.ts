import { Router } from 'express';
import { getAll } from '../../controllers/sequences/getAll';
import { getById } from '../../controllers/sequences/getById';

const sequencesRouter = Router();

sequencesRouter.get('/sequences', getAll);
sequencesRouter.get('/sequences/:id', getById);

export { sequencesRouter };