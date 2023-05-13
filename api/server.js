const express = require('express');
const app = express();

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', 'http://localhost:4200');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  next();
});

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

const apiRoute = require('./api.js');

app.use('/api', apiRoute);

const port = 3000;
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
