const express = require('express');
const cors = require('cors');
const app = express();

app.use(cors());

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

const apiRoute = require('./api.js');

app.use('/api', apiRoute);

const port = 3000;
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
