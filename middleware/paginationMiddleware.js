
const pmw = (ps) => {
    return (req, res, next) => {
      const pn = parseInt(req.query.page) || 1;
      const si = (pn - 1) * ps;
      const ei = si + ps;
  
      req.pagination = {
        page: pn,
        limit: ps,
        si,
        ei,
      };
      next();
    };
  };
 module.exports=pmw;