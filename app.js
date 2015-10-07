var http=require("http");
var express=require("express");
var app=express();

app.set('port',process.env.PORT || 5000);

var urlencodedParser = bodyParser.urlencoded({ extended: false });

http.createServer(app).listen(app.get('port'),function(){
	console.log("server is running for faster moodi on port 5000");
});

app.get('/',express.static(__dirname)); //serves index.html


