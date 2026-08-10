import express, { RequestHandler, ErrorRequestHandler, Response, NextFunction, Request } from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import fs from 'fs';
import YAML from 'yamljs';
import './db';  // initializes the DB connection on startup

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware:  allows which orignins that can access api
const configuredAllowedOrigins: string[] | string = (process.env.ALLOWED_ORIGINS || '')
  .split(',')
  .map(origin => origin.trim())
  .filter(Boolean);
const defaultOrigins: string[] = [`http://localhost:${PORT}`].filter(Boolean);
const allowedOrigins: Set<string> = new Set([...configuredAllowedOrigins, ...defaultOrigins]);
app.use(
  cors(
    {
      origin: (origin: string | undefined, callback: (error: Error | null, allow?: boolean) => void) => {
        if (!origin || allowedOrigins.size === 0 || allowedOrigins.has(origin)) {
          callback(null, true);
          return;
        }
        callback(new Error("Request origin not allowed"));
      },
    }
  )
);

// Middleware: allows to parse JSON body
app.use(express.json());

// Middleware: Logs for dev
//app.use(logger); --In developement

//OpenAPI documentation
const specfile = fs.readFileSync(`./openapi.yaml`, `utf-8`);
const spec = YAML.parse(specfile);
const apiDocsMiddlewarePromise: Promise<RequestHandler> = import(`@scalar/express-api-reference`).then(
  ({ apiReference }) => apiReference({ content: spec }) as RequestHandler
);

app.use(`/api-doc`, async (request: Request, response: Response, next: NextFunction) => {
  try {
    const apiDocMiddleware = await apiDocsMiddlewarePromise;
    apiDocMiddleware(request, response, next);
  } catch (error) {
    next(error);
  }
});

// app.use(routes); --In Development

// 404 Handler
app.use((err: unknown, _request: Request, response: Response, _next: NextFunction) => {
  if (
    typeof err === 'object' && err !== null && 'type' in err && err.type === 'entity.parse.failed') {
    response.status(400).json({
      error: 'The request body contains malformed JSON. Fix the JSON syntax and try again.',
    });
    return;
  }
  response.status(500).json({
    error: 'The server encountered an unexpected error while processing the request.',
  });
});

// Health check route
app.get('/status', (req, res) => {
  res.json({ message: '📖 LOTM API is running' });
});

// Start server
app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});

export default app;
