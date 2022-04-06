const { UserDao } = require('../../models/UserDao');

const Authorization = (req, res, next) => {
    try {
    console.log('success')
    const token = req.cookies.access_token;
    console.log(token)
  if (!token) {
      console.log('INVALID_TOKEN')
    return res.sendStatus(403).json({ message: "INVALID_TOKEN"});
  }
    const data = jwt.verify(token, 'server_made_secret_key');
    req.id = data.id;
    console.log(token)
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

module.exports = { Authorization }