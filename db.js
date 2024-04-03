var mysql = require("mysql");
var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "stu_db",
  });
  connection.connect(function (err) {
    if (err) {
      console.log("Error in the connection");
      console.log(err);
    } else {
      console.log(`Database Connected`);
    }
  });
  module.exports=connection;