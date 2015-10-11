
var SERVER_PORT = process.env.SERVER_PORT || 80;
var LAST_ALERT_FILE = process.env.LAST_ALERT_FILE || '.last_alert';
var WEBSITE = process.env.WEBSITE || '../website/index.html';
var LAST_ALERT = 1444444444; // test date
var ALERT_STATUS = null;


var server = require('http').createServer(),
    fs = require('fs'),
    url = require('url'),
    bodyParser = require("body-parser"),
    WebSocketServer = require('ws').Server,
    wss = new WebSocketServer({ server: server }),
    express = require('express'),
    app = express(),
    port = SERVER_PORT;


// Middleware
app.use(bodyParser.urlencoded({ extended: false }));

// Website
app.get('/', function(req, res){
    var data = fs.readFileSync(WEBSITE);
    res.setHeader('Content-Type', 'text/html');
    res.end(data);
});

// Api
app.get('/api/webhook', function (req, res) {
    res.setHeader('Content-Type', 'text/html');
    res.end('This endpoint only accepts POST requests.');
});
app.post('/api/webhook', function (req, res) {
    console.log('[server] webhook', req.body);
    var type = req.body.message_type;

    if (type === 'critical')
    {
        console.log('[server-webhook] critical');
        ALERT_STATUS = 'paging';
        onMessage(clientMessage(false, true, true));
    }
    else if (type === 'warning')
    {
        console.log('[server-webhook] warning');
        ALERT_STATUS = 'warning';
        onMessage(clientMessage(true, false, false));
    }
    else if (type === 'resolved')
    {
        console.log('[server-webhook] resolved');
        ALERT_STATUS = 'okay';
        onMessage(clientMessage(false, false, false));
    }
    else if (type === 'ack')
    {
        console.log('[server-webhook] ack');
        ALERT_STATUS = 'critical';
        onMessage(clientMessage(true, true, false));
    }
});

// Static
app.use(express.static(__dirname + '/../website'));


wss.broadcast = function broadcast(data) {
  wss.clients.forEach(function each(client) {
    client.send(data);
  });
};


function clientMessage (warning, critical, paging) {
    var out = {
        lastAlert: LAST_ALERT,
        warning: warning,
        critical: critical,
        paging: paging,
    };
    console.log('[server] clientMessage', out);
    return JSON.stringify(out);
}
function getLastAlert (cb) {
    fs.stat(LAST_ALERT_FILE, function (err, stats) {
        if (!err && stats.isFile()) {
            var data = fs.readFileSync(LAST_ALERT_FILE);
            if (data) {
                cb(parseInt(data.toString()));
            }
        }
    });
}
function setLastAlert () {
    var timestamp = Math.floor(Date.now() / 1000);

    fs.writeFileSync(LAST_ALERT_FILE, timestamp);
    LAST_ALERT = timestamp;
}

function onMessage (message) {
    var data = null;
    try {
        data = JSON.parse(message);
    } catch (e) {
        data = message;
    }
    console.log('[server] received:', data);

    var warning = false,
        critical = false,
        paging = false;

    if (data.warning) {
        warning = true;
    }
    if (data.critical) {
        critical = true;
    }
    if (data.paging) {
        paging = true;
        // save the last alert date for a restart
        setLastAlert();
    }

    wss.broadcast(clientMessage(warning, critical, paging));
}


wss.on('connection', function connection(ws) {
    var location = url.parse(ws.upgradeReq.url, true);
    // console.log('loc', location);
    // you might use location.query.access_token to authenticate or share sessions
    // or ws.upgradeReq.headers.cookie (see http://stackoverflow.com/a/16395220/151312)

    ws.on('message', onMessage);

    console.log('[server] connected.');


    // ws.send('something!');
    // setTimeout(function () {
    //     wss.broadcast('new client: ' + location.path);
    // }, 1000);


    getLastAlert(function (timestamp) {
        LAST_ALERT = timestamp;
    });
});


server.on('request', app);
server.listen(port, function () {
    console.log('[server] Listening on ' + server.address().port);
});


require('./test_client_reads');
require('./test_client_writes');
require('./test_webhook_write');

