var connection=require("../../db")
const md5=require("md5")
const jwt = require('jsonwebtoken');

const dotenv = require('dotenv');
dotenv.config();

module.exports=async(req,res)=>{
    ldata=req.body;
   console.log(ldata);
   email=ldata.loginemail;
   userpassword=ldata.loginpassword;
   console.log(userpassword);
  
   const query = (str) => {
     return new Promise((resolve, reject) => {
       connection.query(str, (err, result) => {
         if (err) {
           reject(err);
         } else {
           resolve(result);
         }
       });
     });
   }
  
  
  
  
   let a=await query(` select * from user_registration where email='${email}'`);
   console.log(a)
   // let flag=true;
   // if(a!=""{
   //   if(a[0].password)!{
  
   //   }
   // })
   // let  flag=true;
  let  token;
   if(a.length==0){
     // flag=false;
       token=false;
       res.json({token})
     // return
   }
   console.log("ree",a!='')
   if(a.length>0){
     if(a[0]['password']!=""){  let z=(a[0]['salt'])
     console.log(z)
     const y=md5(z+userpassword);
     console.log(z+userpassword);
     console.log("y",y)
     console.log(a.password!=y)
     console.log("ap",a[0]['password'])
     
     if(!(a[0]['password']==y)){
       
         token=false;
         res.json({token})
         
     }//else{
     //   flag=true;
     // // }
     // flag=true;
     if(a[0]['password']==y){
       let jwtSecretKey = process.env.JWT_SECRET_KEY;
       
       token=jwt.sign({userid:a[0].id,username:a[0].name}, jwtSecretKey,{expiresIn:'1h'}) ;
       res.cookie('auth',token,{maxAge:1000*60*60*10,
       httpOnly:true}).status(200)
       res.json({token})
   }
  
   }
  } 
  // console.log("flg",flag)
  console.log("token",token)
  //
  }