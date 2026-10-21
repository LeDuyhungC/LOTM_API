import { Router } from 'express';
import { getAll } from '../../controllers/sequences/getAll';
import { getById } from '../../controllers/sequences/getById';
import { getRecipe } from '../../controllers/sequences/getRecipe';

const sequencesRouter = Router();

sequencesRouter.get('/sequences', getAll);
sequencesRouter.get('/sequences/:id', getById);
sequencesRouter.get('/sequences/:id/recipe', getRecipe);

export { sequencesRouter };