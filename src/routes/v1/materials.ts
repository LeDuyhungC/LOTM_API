import { Router } from 'express';
import { getAll } from '../../controllers/materials/getAll';
import { getById } from '../../controllers/materials/getById';

const materialsRouter = Router();

materialsRouter.get('/materials', getAll);
materialsRouter.get('/materials/:id', getById);

export { materialsRouter };