var connection=require("../../db")

module.exports=(req, res) => {
    let key = parseInt(req.query.id);
    console.log(key);
  
    var sql = `select student_master.studentid,student_master.firstname,student_master.lastname,subject_master.subjectname as subjectname, result_master.theorymarks_obt as theory_mark,
          result_master.practicalmarks_obt as practical_mark 
          from result_master
          inner join student_master on student_master.studentid=result_master.studentid
          inner join exam_master on exam_master.examid=result_master.examid
          inner join subject_master on subject_master.subjectid=result_master.subjectid where student_master.studentid=${key} order by subject_master.subjectid,exam_master.examid`;
    connection.query(sql, function (err, result, key) {
      console.log(result);
      if (err) throw err;
      res.render("report.ejs", {
        result: result,
        key: 1,
      });
    });
  }