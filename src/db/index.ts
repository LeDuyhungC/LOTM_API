import { Pool } from 'pg';
import dotenv from 'dotenv';

dotenv.config();

// Connection pool — reuses connections instead of creating a new one per query
const pool = new Pool({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// Test connection on startup
pool.connect((err, client, release) => {
  if (err) {
    console.error('❌ Failed to connect to database:', err.message);
  } else {
    console.log('✅ Connected to PostgreSQL database');
    release();
  }
});

export default pool;
