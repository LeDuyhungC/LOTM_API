import { Router } from 'express';
import { getAll } from '../../controllers/aliases/getAll';
import { getById } from '../../controllers/aliases/getById';

const aliasesRouter = Router();

aliasesRouter.get('/aliases', getAll);
aliasesRouter.get('/aliases/:id', getById);

export { aliasesRouter };