const { UserDao } = require('../../models/UserDao');

const jwt = require('jsonwebtoken')//채원님 이게 없었어요

const Authorization = (req, res, next) => {
    try {
      
    const cookies = parseCookies(req.headers.cookie);
    token=cookies.access_token;
    
  if (!token) {
      console.log('INVALID_TOKEN')
    return res.sendStatus(403).json({ message: "INVALID_TOKEN"});
  }
    const data = jwt.verify(token, 'server_made_secret_key')
    req.id = data.id;

    // const data = jwt.verify(token, 'server_made_secret_key', (error, decoded) => {
    //     if (error) {
    //       return res.status(400).json({ message: "WRONG_TOKEN" });
    //     }
    //     if (decoded) {
    //       req.id = jwt.verify(token, process.env.SECRET).id;
    //     }
    //   });
      
    // req.userRole = data.role;
    return next();
  } catch {
    return res.sendStatus(403);
  }
};

const parseCookies = ( cookie = '' ) => {
  console.log("cookie : ",cookie);
  return cookie
      .split(';')
      .map( v => v.split('=') )
      .map( ([k, ...vs]) => [k, vs.join('=')] )
      .reduce( (acc, [k,v]) => {
          acc[k.trim()] = decodeURIComponent(v);
          return acc;
      }, {});
}


module.exports = { Authorization }




 