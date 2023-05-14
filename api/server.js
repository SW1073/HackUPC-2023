const express = require('express');
const cors = require('cors');
const app = express();
const http = require('http').Server(app);
const socketio = require('socket.io');
const io = socketio(http);

app.use(cors());

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

io.on('connection', (socket) => {
    console.log('a user connected');
});

const apiRoute = require('./api.js');

app.use('/api', apiRoute);

const port = 3000;
app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
