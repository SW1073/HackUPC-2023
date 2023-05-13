const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

const apiRoute = require('./api.js');

const port = 3000;
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
