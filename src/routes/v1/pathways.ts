import { Router } from 'express';
import { getAll } from '../../controllers/pathways/getAll';
import { getById } from '../../controllers/pathways/getById';

const pathwaysRouter = Router();

pathwaysRouter.get('/pathways', getAll);
pathwaysRouter.get('/pathways/:id', getById);

export { pathwaysRouter };