const dotenv = require('dotenv');
const jwt = require('jsonwebtoken');
dotenv.config();


module.exports=(req,res,next)=>{
    const token =req.cookies.auth;
    console.log(token);
    if(!token){
        console.log("no token");
        res.redirect("/login")
    }
    else{
        try{
            const verify=jwt.verify(token,"gfg_jwt_secret_key");
          if(verify){
            return next();
          }
        }
        catch(error){
            return res.status(401).send(error);
        }
    }

}