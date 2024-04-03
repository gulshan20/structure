
var paginationMiddleware=require("../../middleware/paginationMiddleware")
var connection=require("../../db")
module.exports=(req, res) => {
    var pid = req.query.page;
  
    const { si, ei } = req.pagination;
  
  
  
    if (pid == undefined || pid == 1) {
      var sql = `select student_master.studentid,student_master.firstname,student_master.lastname,sum(result_master.theorymarks_obt) as theory_mark,sum(result_master.practicalmarks_obt) as practical_mark from student_master join result_master on student_master.studentid=result_master.studentid group by result_master.studentid,result_master.examid   ORDER BY result_master.studentid limit ${si},${60}`;
      connection.query(sql, function (err, result) {
        console.log("fgf",result.length);
        if (err) throw err; 
        res.render("result.ejs", {
          result: result,
          pid: 1,
        });
      });
    } else {
      var sql = `select student_master.studentid,student_master.firstname,student_master.lastname,sum(result_master.theorymarks_obt) as theory_mark,sum(result_master.practicalmarks_obt) as practical_mark from student_master join result_master on student_master.studentid=result_master.studentid group by result_master.studentid,result_master.examid   ORDER BY result_master.studentid limit ${si},${60}`;
      connection.query(sql, function (err, result) {
        console.log("sadas",result.length);
        if (err) throw err;
        res.render("result.ejs", {
          result: result,
          pid: pid,
        });
      });
    }
  };
  
