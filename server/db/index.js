var mysql = require('mysql');

var dbConnection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'fakeFB'
});

dbConnection.connect();

dbConnection.query('select * from users', function(err, res) {
  if(err) {
    throw err;
  }
  console.log(res);
});


module.exports = dbConnection;