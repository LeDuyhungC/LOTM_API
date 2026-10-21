import express, { RequestHandler, ErrorRequestHandler, Response, NextFunction, Request } from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';
import fs from 'fs';
import YAML from 'yamljs';
import './db';  // initializes the DB connection on startup
import { apiRouter } from './routes';

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

// Security: Helmet HTTP security headers (CSP disabled so Scalar docs assets load freely)
app.use(helmet({ contentSecurityPolicy: false }));

// Security: Rate limiting to protect against brute-force and DDoS
const limiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 300,
  standardHeaders: true,
  legacyHeaders: false,
  message: {
    error: 'Too many requests from this IP, please try again after 15 minutes.',
  },
});
app.use(limiter);

// Middleware: allows to parse JSON body
app.use(express.json());

// Middleware: Logs for dev
//app.use(logger); --In developement

// OpenAPI documentation (lazy-loaded on /api-doc request)
let apiDocsMiddlewarePromise: Promise<RequestHandler> | null = null;

app.use(`/api-doc`, async (request: Request, response: Response, next: NextFunction) => {
  try {
    if (!apiDocsMiddlewarePromise) {
      const specfile = fs.readFileSync(`./openapi.yaml`, `utf-8`);
      const spec = YAML.parse(specfile);
      apiDocsMiddlewarePromise = import(`@scalar/express-api-reference`).then(
        ({ apiReference }) => apiReference({ content: spec }) as RequestHandler
      );
    }
    const apiDocMiddleware = await apiDocsMiddlewarePromise;
    apiDocMiddleware(request, response, next);
  } catch (error) {
    next(error);
  }
});

// API Endpoints from ./routes/index.ts
app.use(apiRouter);

// 404 Handler for unmatched routes
app.use((_request: Request, response: Response) => {
  response.status(404).json({
    error: 'Endpoint not found. Please check your URL and HTTP method.',
  });
});

// Global Error Handler
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

// Start server (only outside test environment to allow Supertest testing)
if (process.env.NODE_ENV !== 'test') {
  app.listen(PORT, () => {
    console.log(`🚀 Server running at http://localhost:${PORT}`);
  });
}

export default app;
