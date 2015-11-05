var http=require("http");
var express=require("express");
var bodyParser=require("body-parser");
var mysql=require('mysql');
var app=express();


app.set('port',process.env.PORT || 5000);

var urlencodedParser = bodyParser.urlencoded({ extended: false });

var mysql = require('mysql');
var connection = mysql.createConnection({
	host : 'localhost',
	user : 'root',
	password : ,
	database : 
})

connection.connect();

app.get('/',express.static(__dirname)); //serves index.html


app.post('/api/submit',urlencodedParser,function(req,res){
	var params=req.body;
	console.log(params);
	connection.query('SELECT * from users where phone is LIKE '+connection.escape(params.mobile), function(err,rows,fields){
		if(err)
		{
			var obj={
				status:false,
				message:"Error connecting to database",
				data:err
			};	
			res.send(obj);
		}
		else if(rows[0]!=null)
		{
			var obj={
				status:false,
				message:"The user is already registered",
				data:rows[0]
			};
			res.send(obj);
		}
		else{
			var MiNo ='MI-'+params.name.slice(0,3)+'-%';
			connection.query('SELECT * from users where mi_no is like '+MiNo,function())
		}
	})
});

http.createServer(app).listen(app.get('port'),function(){
	console.log("server is running for faster moodi on port 5000");
});

