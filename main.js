var https = require('https');

var request_options = 
{
    host: 'api.github.com',
    headers: {'user-agent': 'My ass'},
    path: '/users/jeremejevs/repos'
};

https.get(request_options, function(res) {
  var body = '';

    res.on('data', function(chunk) {
        body += chunk;
    });

    res.on('end', function() {
        var fbResponse = JSON.parse(body);
        console.log("Got response: ", fbResponse.length);
    });
});

// USE EJS, LUKE
