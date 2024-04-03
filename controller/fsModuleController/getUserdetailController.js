module.exports= (req, res) => {
    const users = require(filepath);
    res.render("list.ejs", { users });
  }