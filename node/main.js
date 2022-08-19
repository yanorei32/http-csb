const http = require('http');
const process = require('process');
const fs = require('fs');
const server = http.createServer(function(req, resp) {
    resp.end('Hello');
});
setTimeout(function(){
	console.log(fs.readFileSync(`/proc/${process.pid}/status`, 'utf-8'));
	process.exit(0);
}, 3000)
server.listen(8080, '127.0.0.1');
