'use strict';

const express = require('express');

// константы
const port = process.env.PORT;
const host = process.env.HOST;

// приложение
const app = express();
app.get('/', (req, res) => {
  res.send('I\'m api-content');
});

app.listen(port, host);
console.log(`running on http://${host}:${port}`);