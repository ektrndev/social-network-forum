const Pool = require('pg').Pool
const pool = new Pool({
    user: "postgres",
    password : '1Q2w3e4r',
    host : 'localhost',
    port: 5432,
    database: "project_node"
})

module.exports = pool