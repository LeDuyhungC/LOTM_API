import { Router } from 'express';
import { v1Router } from './v1';
import { statusRouter } from './status';

const apiRouter = Router();

apiRouter.use(statusRouter);
apiRouter.use('/v1', v1Router);

export { apiRouter };