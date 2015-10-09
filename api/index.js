var api=require('./api');
var mysql=require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : '', /* username */
  password : '', /* passord */
  database : 'mi_2015'
});

