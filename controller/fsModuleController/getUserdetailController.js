
const path = require('path');


// Calculate the filepath to the data.json file
const filepath = path.join(__dirname, '../../data.json');

module.exports= (req, res) => {
  const users = require(filepath);
  users.forEach((user) => {
    if (user["uniqueId"] == req.query["userid"]) {
      res.render("userdetail.ejs", { user });
    }
  });
}