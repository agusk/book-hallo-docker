const express = require('express');
const mysql = require('mysql');

const app = express();

const connection = mysql.createConnection({
  host: 'db',
  user: 'root',
  password: process.env.MYSQL_PASSWORD,
  database: 'mydatabase'
});

connection.connect();

app.get('/', (req, res) => {
  connection.query('SELECT * FROM mytable', (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

const server = app.listen(3000, () => {
  console.log('Server running at http://localhost:' + server.address().port);
});