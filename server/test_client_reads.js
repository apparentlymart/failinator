
var SERVER_PORT = process.env.SERVER_PORT || 80;

var WebSocket = require('ws');
var ws = new WebSocket('ws://localhost:' + SERVER_PORT);

ws.on('open', function open() {
    console.log('[test_client_reads]: open');
});

ws.on('message', function(data, flags) {
    // flags.binary will be set if a binary data is received.
    // flags.masked will be set if the data was masked.
    console.log('[test_client_reads] received:', data);
});
