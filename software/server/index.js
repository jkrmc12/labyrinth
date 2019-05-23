var app = require('http').createServer(handler)
var io = require('socket.io')(app);
var fs = require('fs');

var score = 0;
var inGame = false;
var serverSocket;

app.listen(9090);
// WARNING: app.listen(80) will NOT work here!

console.log("Started");

function handler (req, res) {
  fs.readFile(__dirname + '/index.html',
    function (err, data) {
      if (err) {
        res.writeHead(500);
        return res.end('Error loading index.html');
      }

      res.writeHead(200);
      res.end(data);
    });
}
function gameEventLost() {
  console.log('Lost');
  score = 0;
  console.log(`Score: ${score}`)
  inGame = false;
  emitScore(score);
}

function gameEventGoal() {
  console.log('GOAL!');
  console.log(`Score: ${score}`)
  inGame = false;
  emitScore(score);

}

function gameEventGameStarted() {
  console.log('Game started');
  score = 1000;
  inGame = true;
  emitScore(score);
}

function reemit(socket, event) {
  socket.on(event, function (data) {
    console.log(`${event} data:${JSON.stringify(data)}`);
    serverSocket.emit(event, data);
  });
}

io.on('connection', function (socket) {
  console.log(`socket.io event: connection id=${socket.id}`)

  serverSocket = socket;

  socket.on('gamestate', function (data) {
    console.log(`gamestate: ${data.name}`);

    if (data.name === 'gamestarted') {
      gameEventGameStarted();
    }

    if (data.name === 'goal') {
      gameEventGoal();
    }

    if (data.name === 'lost') {
      gameEventLost();
    }

    serverSocket.emit('gamestate', data);
  });


  socket.on('disconnect', function (socket) {
    console.log(`socket.io event: disconnect id=${socket.id}`)
  });

  // reemit(socket, 'gamestate');
  reemit(socket, 'xbno');
  reemit(socket, 'ybno');
  reemit(socket, 'xspeed');
  reemit(socket, 'yspeed');
  reemit(socket, 'xsetpoint');
  reemit(socket, 'ysetpoint');
});

function emitScore(t) {
  if (serverSocket) {
    serverSocket.emit('score', {value: t});
    console.log(`emitting score: ${t}`);
  } else {
    console.error("no server socket");
  }
}

setInterval(function () {
  if (inGame) {
    score = score - 10;
    if (score > 0) {
      emitScore(score);
    } else {
      gameEventLost();
    }
  }
}, 500);