var nodemailer = require('nodemailer');
var mg = require('nodemailer-mailgun-transport');
var mysql=require('mysql');

var auth = {
  auth: {
    api_key: 'key-35cd5e26ec3ee55cdc667c853be5833f',
    domain: 'mg.moodi.org'
  }
}
var nodemailerMailgun = nodemailer.createTransport(mg(auth));
exports.email=function(to,from,subject,message)
{

  nodemailerMailgun.sendMail({
    from: from,
    to: to, // An array if you have multiple recipients.
    subject: subject,
    'h:Reply-To': 'help@moodi.org',
    html: message,
  }, function (err, info) {
    if (err)
    {
      console.log(err);
    }
  });
}
  
