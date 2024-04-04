const express = require("express");
const router = express.Router();

var authorization=require("./middleware/authorization");
var paginationMiddleware=require("./middleware/paginationMiddleware");


const bodyParser = require("body-parser");
router.use(bodyParser.json());
router.use(bodyParser.urlencoded({ extended: true }));

var cookieParser = require('cookie-parser');
router.use(cookieParser());

router.use(express.static("public"));

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
const getEmpFormControler=require("./controller/fsModuleController/getEmpFormController");
const getListEmpController=require("./controller/fsModuleController/getListEmpController");
const getUserdetailController=require("./controller/fsModuleController/getUserdetailController");
const postEmpFormController=require("./controller/fsModuleController/postEmpFormController");

const getdynamicController=require("./controller/jstaskController/dynamictableController");
const getKukuCubeController=require("./controller/jstaskController/kukuCubeController");
const getTictacToeController=require("./controller/jstaskController/tictactoeController")

const getforgetpasswordController = require("./controller/registrationController/getforgetpasswordController");
const postforgetPasswordController = require("./controller/registrationController/postforgetPasswordController");
const getresetpasswordController=require("./controller/registrationController/getresetpasswordController")
const postresetpasswordController=require("./controller/registrationController/postresetpasswordController");
const getactivationCodeController=require("./controller/registrationController/getActivationCodeController");
const getlinkController=require("./controller/registrationController/getLinkController");
const getregisterController=require("./controller/registrationController/getregsiterController")
const postregisterController=require("./controller/registrationController/postregisterController")
const postsetpasswordController=require("./controller/registrationController/postsetPasswordController");
const getEventTaskController=require("./controller/jstaskController/getEventTaskController");
const getSortingTaskController=require("./controller/jstaskController/getSortingTaskController")
const getDashBoardController=require("./controller/dashboardContrller/getDashBoardController");
const getLoginPageController=require("./controller/loginController/getLoginPageController");
const postLoginDataController=require("./controller/loginController/postLoginDataControler");
const getLogoutController=require("./controller/loginController/getLogoutController");

const getForm1Controller=require("./controller/formController/getForm1")
const getForm2Controller=require("./controller/formController/getForm2");
const comboBoxController=require("./controller/comboBoxController/comboBoxControler");
const getCityControler=require("./controller/comboBoxController/getCityController")








router.get("/login",getLoginPageController);
router.post("/login",postLoginDataController);

router.get("/dashboard",authorization,getDashBoardController
);


router.get("/register",getregisterController);
router.post("/register/:code",postregisterController);
router.get("/thank/:code",getlinkController);
router.get("/activate/:code",getactivationCodeController);
router.post("/setPassword/:code",postsetpasswordController);
router.get("/forgetpassword",getforgetpasswordController);
router.post("/forgetpassword",postforgetPasswordController);
router.get("/resetpassword/:em",getresetpasswordController);
router.post("/resetpassword/:em",postresetpasswordController);



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
router.get("/event",authorization,getEventTaskController);
router.get("/sorting",authorization,getSortingTaskController);

router.get("/fsmodulecrud",authorization, getEmpFormControler);
router.post("/fsmodulecrud",authorization,postEmpFormController);
router.get("/list",authorization, getListEmpController);
router.get("/userdetail", authorization,getUserdetailController);

router.get("/form2",authorization,getForm2Controller);
router.get("/form1",authorization,getForm1Controller)

router.get("/combo",authorization,comboBoxController)
router.get('/cities/:state',authorization, getCityControler);




router.get("/logout",authorization,getLogoutController)



module.exports=router;


















    
  
  





// const ITEMS_PER_PAGE = 10; // Adjust the number of items per page as needed





 
   
  
  


 
  
  





