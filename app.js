var http=require("http");
var express=require("express");
var bodyParser=require("body-parser");
var mysql=require('mysql');
var app=express();


app.set('port',process.env.PORT || 5000);

var urlencodedParser = bodyParser.urlencoded({ extended: false });




app.get('/',express.static(__dirname)); //serves index.html


app.post('/api/submit',urlencodedParser,function(req,res){
	var params=req.body;

});

http.createServer(app).listen(app.get('port'),function(){
	console.log("server is running for faster moodi on port 5000");
});

