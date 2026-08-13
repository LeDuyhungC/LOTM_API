import { Request, Response, Router } from 'express';

const statusRouter = Router();

const getStatus = async (_request: Request, response: Response) => {
    response.status(200).json({ message: "📖 LOTM API is running" });
};

statusRouter.use('/status', getStatus);

export { statusRouter };