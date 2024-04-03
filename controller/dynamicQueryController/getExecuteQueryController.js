
var connection=require("../../db")
const ITEMS_PER_PAGE = 10; 

module.exports=(req,res)=>{
    var sql=req.query.sql;
    var page = parseInt(req.query.page) || 1;
     
    const offset = (page - 1) * ITEMS_PER_PAGE;
    if(page==undefined||page==1){
       const countQuery = `
       SELECT COUNT(*) AS totalCount
       FROM (${sql}) AS data`;
  
       
      
       connection.query(countQuery, (countError, countResults) => {
          if (countError) {
              console.error('Error executing count SQL query:', countError);
              res.status(500).send('Internal Server Error');
              return;
          }
  
          const totalCount = countResults[0].totalCount;
  
          connection.query(`${sql} LIMIT ${offset}, ${ITEMS_PER_PAGE}`, (error, result) => {
              if (error) {
                  console.error('Error executing data SQL query:', error);
                  res.status(500).send('Internal Server Error');
                  return;
              }
              if (!result || result.length === 0) {
                
                  console.log('No results found.');
                  res.status(404).send('Not Found');
                  return;
              } 
           
              const totalPages = Math.ceil(totalCount / ITEMS_PER_PAGE);
  
              res.render('queryresult.ejs', {
                 
                  data: result,
                  page: 1,
                  totalPages: totalPages,
                  sql:sql
                 
              });
          });
      });
  }
  else{
  
  
  
  const countQuery = `
       SELECT COUNT(*) AS totalCount
       FROM (${sql}) AS data`;
  
       
       const ITEMS_PER_PAGE = 10; 
       connection.query(countQuery, (countError, countResults) => {
          if (countError) {
              console.error('Error executing count SQL query:', countError);
              res.status(500).send('Internal Server Error');
              return;
          }
  
          const totalCount = countResults[0].totalCount;
  
          connection  .query(`${sql} LIMIT ${offset}, ${ITEMS_PER_PAGE}`, (error, result) => {
              if (error) {
                  console.error('Error executing data SQL query:', error);
                  res.status(500).send('Internal Server Error');
                  return;
              }
              if (!result || result.length === 0) {
                  // Handle the case when no results are returned
                  console.log('No results found.');
                  res.status(404).send('Not Found');
                  return;
              }
  
              const totalPages = Math.ceil(totalCount / ITEMS_PER_PAGE);
  
              res.render('queryresult.ejs', {
                 
                  data: result,
                  page: page,
                  totalPages: totalPages,
                  sql:sql
                 
              });
          });
      });
  }
  }