const express = require("express");
const router = express.Router();
var md5=require("md5");
const connection=require("./db");
var md5=require("md5");
var moment = require('moment'); // require
moment().format(); 
var authorization=require("./middleware/authorization");
var paginationMiddleware=require("./middleware/paginationMiddleware");
const fs = require("fs");
var filepath = __dirname + "/data.json";
var uuid = require("uniqid");
const uniqueId = uuid();  

const dotenv = require('dotenv');
const jwt = require('jsonwebtoken');
dotenv.config();

const bodyParser = require("body-parser");
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));

var cookieParser = require('cookie-parser');
router.use(cookieParser());

const attendancecontroller = require("./controller/attendanceController/attendancecontroller");
const resultController = require("./controller/exam_masterController/resultController");
const reportController=require("./controller/exam_masterController/reportController");
const getdynamicQueryController=require("./controller/dynamicQueryController/getdynamicQueryController");
const postExecuteQueryController=require("./controller/dynamicQueryController/postExecuteQueryController");
const getExecuteQueryController = require("./controller/dynamicQueryController/getExecuteQueryController");
const getSearchtableController=require("./controller/delimeterSearchController/getSearchtableController");
const postSearchtableController=require("./controller/delimeterSearchController/postSearchtableController");
const getAjaxFormController=require("./controller/ajaxformController/getAJaxformController");
const submitAjaxFormController=require("./controller/ajaxformController/postAjaxformSubmitController");
const postUpdateAjaxformController=require("./controller/ajaxformController/postUpdateAjaxformController");
const getdataAjaxformController=require("./controller/ajaxformController/getdataAjaxformController");
const getUpdateformController = require("./controller/ajaxformController/getUpdateformController");
const getAmanHosteController=require("./controller/webdesignController/amanhosterController");
const getHirexController=require("./controller/webdesignController/hirexController");
// const getEmpFormControler=require("./controller/fsModuleController/getEmpFormController");
// const getListEmpController=require("./controller/fsModuleController/getListEmpController");
// const getUserdetailController=require("./controller/fsModuleController/getUserdetailController");
// const postEmpFormController=require("./controller/fsModuleController/postEmpFormController");

const getdynamicController=require("./controller/jstaskController/dynamictableController");
const getKukuCubeController=require("./controller/jstaskController/kukuCubeController");
const getTictacToeController=require("./controller/jstaskController/tictactoeController")

router.use(express.static("public"));




console.log("dfasf",__dirname)  


function randomStr(len, arr) {
    let ans = '';
    for (let i = len; i > 0; i--) {
        ans +=
            arr[(Math.floor(Math.random() * arr.length))];
    }
    return ans;
}

router.get("/dashboard",authorization,(req,res)=>{
  res.render("all.ejs")
});


// router.get("/dynamictable",authorization,(req,res)=>{
//     res.render("dynamictable.ejs");
// });

// router.get("/kukucube",authorization,(req,res)=>{
//     res.render("kuku_cube.ejs")
// });
// router.get("/tictactoe",authorization,(req,res)=>{
//     res.render("tictactoe.ejs")
// });
router.get("/event",authorization,(req,res)=>{
  res.render("event.ejs")
})
router.get("/sorting",authorization,(req,res)=>{
  res.render("sorting.ejs")
});




router.get("/register",async(req, res) => {

    res.render("register.ejs");
  });
  router.post("/register/:code",async(req,res)=>{
     const code=req.params.code
     console.log(code)
    fdata=req.body;
    const name=fdata.name;
    const phone=fdata.phone;

    const email=fdata.email;
    // var url=`/activate/${code}`
     connection.query(`select * from user_registration where email='${email}'`,(err,result)=>{
    console.log(result);
     let flag=true
    if(result.length>0){
      if(result[0].password!=null){
          flag=false
          // return;
      }
      if(!(result[0].password==null)){
        flag=false
      }
    
    } else{
      flag=true;
       connection.query(`insert into user_registration(name,phone,email,code) values('${name}','${phone}','${email}','${code}')`);
    }
    console.log(flag);
    res.json(flag);
   });

  });



  router.get("/thank/:code",(req,res)=>{
    
    const code=req.params.code;
    res.render("link.ejs",{code:code})
  })

router.get("/activate/:code",async(req,res)=>{
    const code=req.params.code
    console.log("code",code)
 let y=connection.query(`select created_on from user_registration where code='${code}'`,(err,result)=>{
    console.log(result)
    const myJSON = (result[0].created_on); 
   let link_duration= moment(myJSON).add(10000, 'milliseconds');
    //  console.log(myJSON)
    console.log("link_duration",link_duration)
    let now=moment();
   console.log("now",now)
   if(link_duration>now){
        res.render("password.ejs")
   }
   else{
    res.send("<h2>Sorry Link Has been expired</h2>")
   }
  
 });
 
})

router.post("/setPassword/:code",(req,res)=>{
    const code=req.params.code
    pdata=req.body;
    let salt=randomStr(4,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890');
    const password=pdata.password[0];
    console.log("salt",salt);
    console.log("password",password);
    const combinepassword=salt+password
    const finalpassword=md5(combinepassword);
    console.log("encrypted",finalpassword);
    var query=`update user_registration set password ='${finalpassword}', salt='${salt}' where code='${code}'`;
    connection.query(query);
    res.send("ok");
  

    
})
router.get("/login",(req,res)=>{
  res.render("login.ejs");
  // ldata=req.body;
  // console.log(ldata);

});
router.post("/login",async(req,res)=>{
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
});  

router.get("/logout",authorization,(req,res)=>{
  res.clearCookie("auth").status(200).redirect("/login")
})
    
  
  

 

router.get("/forgetpassword",async(req,res)=>{
  res.render("forgetpassword.ejs");
});
router.post("/forgetpassword",async(req,res)=>{
  console.log(req.body);
  email=req.body.loginemail;
  console.log(email);
  flag=true;
   connection.query(`select * from user_registration where email='${email}'`,(err,result)=>{
    if(err)throw err;
    console.log(result[0]);

   if(result[0]==undefined){
     flag=false;
      // res.json(flag);
    
    }
    else{
    
      flag=true ;
    }
    res.json(flag)
    
   
  })
});
router.get("/resetpassword/:em",(req,res)=>{
  res.render("resetpassword.ejs");
});
router.post("/resetpassword/:em",(req,res)=>{
  rpdata=req.body;
  email=req.params.em
  console.log(rpdata);
  console.log(email)
  const salt=randomStr(4,'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890');
  let combinepassword=salt+rpdata.rpassword;
  console.log(combinepassword);
  let finalpassword=md5(combinepassword);
  console.log('finalpassword',finalpassword);
  connection.query(`update user_registration set password='${finalpassword}', salt='${salt}' where email='${email}' `);
  res.send("ok");
});



const ITEMS_PER_PAGE = 10; // Adjust the number of items per page as needed



router.get("/kukucube",authorization,getKukuCubeController);
router.get("/dynamictable",authorization,getdynamicController);
router.get("/tictactoe",authorization,getTictacToeController);
router.get("/attendance",authorization,attendancecontroller);
router.get("/result",authorization,paginationMiddleware(60),resultController)
router.get("/report",authorization,reportController)
router.get("/dynamicquery",authorization,getdynamicQueryController)
router.post("/executeQuery",authorization,postExecuteQueryController)
router.get("/executeQuery",authorization,getExecuteQueryController)
router.get("/searchtable",authorization,getSearchtableController)
router.post("/searchtable",authorization,postSearchtableController)
router.get("/ajaxform",authorization,getAjaxFormController)
router.post("/submit",authorization,submitAjaxFormController);
router.post("/updateform/:id",authorization,postUpdateAjaxformController);
router.get("/getdata",authorization,getdataAjaxformController)
router.get("/update",authorization,getUpdateformController);
router.get("/amanhoster",authorization,getAmanHosteController);
router.get("/hirex",authorization,getHirexController);
// router.get("/fsmodulecrud",authorization,getEmpFormControler);
// router.post("/fsmodulecrud",authorization,postEmpFormController);
// router.get("/list",authorization,getListEmpController);
// router.get("/userdetail",authorization,getUserdetailController)
 

 
   
  
  


  router.get("/fsmodulecrud",authorization, (req, res) => {
    res.render("emp5.ejs");
  });
  router.post("/fsmodulecrud",authorization, (req, res) => {
    //let data = req.body;
    //console.log(data);
  
    let data = { uniqueId, ...req.body };
    let userjson = fs.readFileSync(filepath, "utf-8");
    let users = JSON.parse(userjson);
    users.push(data);
    userjson = JSON.stringify(users);
    fs.writeFileSync(filepath, userjson, "utf-8");
    //res.send(res.render("pages/list", { users }));
    res.redirect("list");
    //res.send(res.render("pages/userdetails", { users }));
  
    console.log(uniqueId);
    console.log(data);
  });
  
  router.get("/list",authorization, (req, res) => {
    const users = require(filepath);
    res.render("list.ejs", { users });
  });
  
  router.get("/userdetail", authorization,(req, res) => {
    const users = require(filepath);
    users.forEach((user) => {
      if (user["uniqueId"] == req.query["userid"]) {
        res.render("userdetail.ejs", { user });
      }
    });
  });
  router.get("/form2",authorization,(req,res)=>{
    res.render("form2.ejs")
  });
  router.get("/form1",authorization,(req,res)=>{
    res.render("form1.ejs")
  })
  router.get("/combo",authorization,(req,res)=>{
    res.render("combobox.ejs")
  })
  router.get('/cities/:state',authorization, (req, res) => {
    const state = req.params.state;
    let cities = [];
    switch (state) {
        case 'AP':
            cities = ['Visakhapatnam', 'Vijayawada', 'Guntur', 'Hyderabad'];
            break;
        case 'KA':
            cities = ['Bangalore', 'Mysore', 'Hubli'];
            break;
        case 'MH':
            cities = ['Mumbai', 'Pune', 'Nagpur'];
            break;
        case 'GJ':
            cities = ['Surat', 'Ahmedabad', 'valsad', 'vapi', 'vadodara', 'mehsana'];
            break;
        case 'UP':
            cities = ['Kanpur', 'Faridabad', 'Ayodhaya', 'Baliya', 'Varanasi', 'Noida'];
            break;
        default:
            cities = [];
    }
    res.json(cities);
});
  
  





module.exports=router;
