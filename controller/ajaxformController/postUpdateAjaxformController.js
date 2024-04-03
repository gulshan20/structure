var connection=require("../../db")

module.exports=async(req,res)=>{
    empid=req.params.id;
    // console.log(empid)
     console.log(req.body);

    const fname1 = req.body.fname;
    const lname = req.body.lname;
    const desig = req.body.desig;
    const add = req.body.add;
    const email = req.body.email;
    const pin = req.body.pin;
    const phone = req.body.phone;
    const city = req.body.city;
    const gender = req.body.gender;
    const state = req.body.state;
    const rel_status = req.body.rel_status;
    const dob = req.body.dob;
    const refname=req.body.refname
    const refcontact=req.body.refcontact
    const refrelation=req.body.refrel
    // console.log(req.body.refrel)

    console.log(req.body.board);
    const board=req.body.board;
    const passingyear=req.body.passingyear;
    const per=req.body.per;
    const comp=req.body.comp;
    const designation=req.body.designation;
    const frm_date=req.body.frm_date;
    const to=req.body.to;
    const language =req.body.language;
    const prefloc=req.body.prefloc;
    const np=req.body.np;
    const department=req.body.department;
    const exp_ctc=req.body.exp_ctc;
    const current_ctc=req.body.current_ctc;
    
    
    if(empid){
      let query=(str)=>{
          return new Promise((resolve,reject)=>{
              connection.query(str,function(err,result){
                  if(err)throw err;
                  else {
                  resolve(result);
              }
                  
              })
          })
      }
     let q1= await query(`UPDATE basic_details set f_name = '${fname1}',l_name='${lname}',desig='${desig}',add1='${add}',email='${email}',pin='${pin}',phone='${phone}',city='${city}',
      
       gender='${gender}',state='${state}',rel_status='${rel_status}',dob='${dob}' WHERE emp_id = '${empid}'`);
      //  console.log(q3);
   let q0=await query(`select * from education where emp_id='${empid}'`)
   console.log("jdfsk",q0)
      for(let i=0;i<board.length;i++){
        if(board[i]){
            let q2= await query(`update education set board='${board[i]}',passing_year='${passingyear[i]}',percentage='${per[i]}' where emp_id='${empid}' and 
            ed_id='${q0[i].ed_id}'`)
        }
      }

      let q3=await query(`select * from workexp where emp_id='${empid}'`);
      console.log(q3)
      console.log(q3.length);
      for(let i=0;i<q3.length;i++){
        if(comp[i]){
            await query(`update workexp set company='${comp[i]}',designation='${designation[i]}',from_date='${frm_date[i]}',to_date='${to[i]}' where emp_id='${empid}'and
            work_id='${q3[i].work_id}' `)
        }
        // await query(``)
      }

      const formData = req.body; 

        // Update language known details
        if (formData.language.length > 0) {
            for (let i = 0; i < formData.language.length; i++) {
                const language = formData.language[i];
                const q4= `
                    update language_known SET language_name = '${language}',language_level = '${formData[language + '_know']}'where
                        emp_id = '${empid}'
                        and language_name = '${language}'`;

                // Execute the update query for each language known detail
              let q5=  await query(q4);
                //  await console.log(q5)
            }
        } 

        const fdata=req.body;
          for(let i=0;i<fdata.technology.length;i++){
            if(req.body.technology[i]){
              const q6=`update technology_known set technology='${fdata.technology[i]}' ,technology_level='${fdata[fdata.technology[i]+'_level']}' 
              where emp_id='${empid}' and technology='${fdata.technology[i]}'`;
              await query(q6)
            }
            
            
          }
        
        
        
    
     let q7=
      await query(`update reference set refname ='${refname}', contact='${refcontact}',relation='${refrelation}' where emp_id='${empid}'`)
     let q8=await query(`update preference set prefloc='${prefloc}',noticeperiod='${np}',department='${department}',
     exp_ctc='${exp_ctc}',current_ctc='${current_ctc}'`);
     
        
        
   }
    // res.send("helooo");
  
  }