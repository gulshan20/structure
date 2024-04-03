var connection=require("../../db");


module.exports=(req,res)=>{
    var q1=`select * from student_master limit 200`;
    connection.query(q1,(error,results)=>{
    if(error)throw error;
    const columns = Object.keys(results[0]);
    const rows = results;
    res.render('searchtable.ejs',
    {rows:results,
     columns:columns
    
    
    });
    })
      
    }