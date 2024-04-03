
const fs = require("fs");
var filepath = __dirname + "/data.json";
var uuid = require("uniqid");
const uniqueId = uuid();  
console.log("dsd",filepath)
module.exports=(req, res) => {
  
    let data = { uniqueId, ...req.body };
    let userjson = fs.readFileSync("data.json", "utf-8");
    let users = JSON.parse(userjson);
    users.push(data);
    userjson = JSON.stringify(users);
    fs.writeFileSync("data.json", userjson, "utf-8");
    res.redirect("list");
 
  }