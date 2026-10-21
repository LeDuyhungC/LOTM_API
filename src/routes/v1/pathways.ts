import { Router } from 'express';
import { getAll } from '../../controllers/pathways/getAll';
import { getById } from '../../controllers/pathways/getById';
import { getSequences } from '../../controllers/pathways/getSequences';
import { getNeighboring } from '../../controllers/pathways/getNeighboring';

const pathwaysRouter = Router();

pathwaysRouter.get('/pathways', getAll);
pathwaysRouter.get('/pathways/:id', getById);
pathwaysRouter.get('/pathways/:id/sequences', getSequences);
pathwaysRouter.get('/pathways/:id/neighboring', getNeighboring);

export { pathwaysRouter };