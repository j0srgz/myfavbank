const mysql = require('mysql');
const { database } = require('./infodb');
const pool = mysql.createPool(database);
const { promisify } = require('util');

pool.getConnection((err, connection) => {
    if (err){
        console.log(err);
    }
    if (connection) 
    connection.release()
        console.log('[!] Conectado a la base de datos')
        return;
})

pool.query = promisify(pool.query)

module.exports = pool;

