import { Router } from 'express';
import { getAll } from '../../controllers/chapters/getAll';
import { getById } from '../../controllers/chapters/getById';

const chaptersRouter = Router();

chaptersRouter.get('/chapters', getAll);
chaptersRouter.get('/chapters/:id', getById);

export { chaptersRouter };