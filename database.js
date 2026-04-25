const { Pool } = require('pg');
require('dotenv').config();

// Connection pool
const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false // This is required for Render cloud connections
    }
});

module.exports = pool;
