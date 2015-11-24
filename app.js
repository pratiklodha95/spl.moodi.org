var http=require("http");
var express=require("express");
var bodyParser=require("body-parser");
var mysql=require('mysql');
var app=express();


app.set('port',process.env.PORT || 5678);

var urlencodedParser = bodyParser.urlencoded({ extended: false });

var mysql = require('mysql');
var connection = mysql.createConnection({
	host : 'localhost',
	user : '',
	password :'' ,
	database :'' 
})

// connection.connect();

app.get('/',express.static(__dirname)); //serves index.html


var insert=function(params,new_mi_no,res)
{
	new_mi_no=new_mi_no.toUpperCase();
	console.log(new_mi_no);
	 connection.query('insert into users (mi_no, city_id, clg_id, name, email, phone, gender, year_study) values (' + connection.escape(new_mi_no) + ', '+ connection.escape(params.city) + ', ' + connection.escape(params.college) + ', ' + connection.escape(params.name) + ', ' + connection.escape(params.email) + ', ' + connection.escape(params.mobile) + ', ' + connection.escape(params.gender) + ', ' + connection.escape(params.year) + ')',function selectCb(err, results, fields)
	 {
	 	if(err){
	 		var obj={
	 			status:false,
	 			message:"Error in inserting data into database please try again",
	 			data:err
	 		}
	 		res.send(obj);
	 	}
	 	else{
	 		var obj={
	 			status:true,
	 			mi_no:new_mi_no,
	 			message:"Successfully Registered"
	 		}
	 		res.send(obj);
	 		//sending mails

	 		
	 		
	 	}
	 });
}

app.post('/api/submit',urlencodedParser,function(req,res){
	var params=req.body;
	console.log(params);
	var email_reg = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i;
	var mobile_reg = /^(\+\d{1,3}[- ]?)?\d{10}$/;
	if(params.name!=""&&email_reg.test(params.email)&&mobile_reg.test(params.mobile)&&params.year!=""&&params.gender!=""&&params.city!=undefined&&params.college!=0)
	{				
		connection.query('SELECT * from users where phone LIKE '+connection.escape(params.mobile), function(err,rows,fields){
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
					err:1,
					message:"The user is already registered",
					data:rows[0]
				};
				res.send(obj);
			}
			else{
				var mi=params.name.slice(0,3);
				var MiNo ='MI-'+mi+'-%';
				var new_mi_no;
				connection.query("SELECT mi_no from users where mi_no LIKE '"+MiNo+"' ORDER BY mi_no DESC LIMIT 1",function(err,rowss,fields){
					if(err)
					{
						console.log(err);
						var obj={
				 			status:false,
				 			message:"Error in inserting data into database please try again",
				 			data:err
				 		}
				 		res.send(obj);
					}
					else
					{
						if(rowss[0]==null)
						{
							new_mi_no='MI-'+mi+'-101';
							insert(params,new_mi_no,res);
						}
						else if(parseInt(rowss[0].mi_no.split("-")[2])==999)
						{
							var new_MiNo='MI-'+mi+'-1___';
							connection.query('SELECT mi_no FROM users where mi_no LIKE "'+new_MiNo+'" ORDER BY mi_no DESC LIMIT 1', function(err, rowsss, fields) {
	                  			if(err)
	                  			{
	                  				var obj={
							 			status:false,
							 			message:"Error in inserting data into database please try again",
							 			data:err
							 		}
							 		res.send(obj);
	                  			}
	                  			else if(rowsss[0]==null)
	                  			{
	                  				new_mi_no='MI-'+mi+'-1000';
	                  				insert(params,new_mi_no,res);
	                  			}
	                  			else
	                  			{
	              					var no=parseInt(rowsss[0].mi_no.split("-")[2])+1;
	                      			new_mi_no='MI-'+mi+'-'+no;
	                      			insert(params,new_mi_no,res);
	                  			}
	                  		});
						}
						else
						{
							var no=parseInt(rowss[0].mi_no.split("-")[2])+1;
	           		 		new_mi_no='MI-'+mi+'-'+no;
	           		 		insert(params,new_mi_no,res);
						}
					}
				})//end of second query
						
			}
		}) //end of first query
	}
	else
	{
		var obj={
 			status:false,
 			message:"Some Fields Missing",
 			data:err
 		}
 		res.send(obj);
	}
});

http.createServer(app).listen(app.get('port'),function(){
	console.log("server is running for faster moodi on port 5000");
});

