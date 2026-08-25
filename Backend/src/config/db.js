const mysql = require('mysql2/promise');

// Cria a conexão com o banco de dados
const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'ordemdex',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

module.exports = pool;