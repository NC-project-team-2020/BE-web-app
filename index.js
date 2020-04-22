const express = require('express');
const app = express();
const http = require('http').createServer(app);
const io = require('socket.io')(http);
const apiRouter = require('./routes/api.router');

app.use(express.json());

app.use('/api', apiRouter);

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', (socket) => {
  console.log('a user connected');
});

// io.on("sendMessage", (msg) => {
//   io.emit("displayMessage", msg)
// })

http.listen(3000, () => {
  console.log('listening on *:3000');
});

app.use((err, req, res, next) => {
  res.status(404).send({ err: 'something is wrong' });
});
