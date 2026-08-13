import { Router } from 'express';
import { getAll } from '../../controllers/abilities/getAll';
import { getById } from '../../controllers/abilities/getById';

const abilitiesRouter = Router();

abilitiesRouter.get('/abilities', getAll);
abilitiesRouter.get('/abilities/:id', getById);

export { abilitiesRouter };
