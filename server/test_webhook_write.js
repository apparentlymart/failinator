
var querystring = require('querystring');
var http = require('http');

var SERVER_PORT = process.env.SERVER_PORT || 80;

function testWebhook (status) {
  // Build the post string from an object
  var now = Math.floor(Date.now() / 1000);
  var post_data = querystring.stringify({
      entity_state: status.toUpperCase(),
      message_type: status.toLowerCase(),
      routing_key: 'everyone',
      servicegroupname: 'test',
      entity_id: '1234',
      timestamp: now + '',
  });

  // An object of options to indicate where to post to
  var post_options = {
      host: '127.0.0.1',
      port: SERVER_PORT,
      path: '/api/webhook',
      method: 'POST',
      headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Content-Length': post_data.length
      }
  };

  // Set up the request
  var post_req = http.request(post_options, function(res) {
      res.setEncoding('utf8');
      res.on('data', function (chunk) {
          console.log('[post_webhook_write] response: ' + chunk);
      });
  });

  // post the data
  post_req.write(post_data);
  post_req.end();
}


function write (status, interval) {
    setInterval(function () {
        testWebhook(status);
    }, interval * 1000);
}


setTimeout(function () {

  testWebhook('okay');

  write('critical', 12);
  write('ack', 14);
  write('warning', 16);
  write('resolved', 20);

}, 3000);

