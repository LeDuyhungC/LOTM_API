import { Request, Response, Router } from 'express';

const statusRouter = Router();

const message: string = '📖 LOTM API is running';
const sendStatus = (_request: Request, response: Response) => {
    response.status(200).json({ message });
};

statusRouter.get('/status', sendStatus);

export { statusRouter };