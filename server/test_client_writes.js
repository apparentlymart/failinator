
var SERVER_PORT = process.env.SERVER_PORT || 80;

var WebSocket = require('ws');
var ws = new WebSocket('ws://localhost:' + SERVER_PORT);


function clientMessage (warning, critical, paging) {
    var out = {
        warning: warning,
        critical: critical,
        paging: paging,
    };
    console.log('[server] clientMessage', out);
    return JSON.stringify(out);
}
function write (warning, critical, paging, interval) {
    setInterval(function () {
        ws.send(clientMessage(warning, critical, paging));
    }, interval * 1000);
}

ws.on('open', function open() {
    ws.send(clientMessage(true, false, false));

    // write(true, false, false, 12); // warning
    // write(true, true, false, 14); // critical
    // write(true, true, true, 18); // paging
    // write(false, false, false, 20); // okay
});

