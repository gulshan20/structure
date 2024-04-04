module.exports=(req,res)=>{
    res.clearCookie("auth").status(200).redirect("/login")
  }