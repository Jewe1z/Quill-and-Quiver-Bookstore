const { Pool } = require('pg');
require('dotenv').config();

//const pool = new Pool({
//  user: process.env.DB_USER,
//  password: process.env.DB_PASSWORD,
//  host: process.env.DB_HOST,
//  database: process.env.DB_DATABASE,
//  port: process.env.DB_PORT,
//});

// Connection pool (For Render)
const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
});

// Export connection pool
module.exports = pool;
