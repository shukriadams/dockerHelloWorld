const http = require('http')
    process = require('process'),
    port = process.env.PORT ? parseInt(process.env.PORT.trim()) : 8080,
    server = http.createServer(function (req, res) {
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end('Hello World\n');
    });

server.listen(port);
console.log(`Server listening on port ${port}`);
