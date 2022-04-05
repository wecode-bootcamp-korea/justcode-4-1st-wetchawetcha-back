const { UserDao } = require('../../models/UserDao');

const Authorization = (req, res, next) => {
    const token = req.cookies.access_token;
  if (!token) {
    return res.sendStatus(403);
  }
  try {
    const data = jwt.verify(token, 'server_made_secret_key');
    req.id = data.id;
    // req.userRole = data.role;
    return next();
  } catch {
    return res.sendStatus(403);
  }
};

module.exports = { Authorization }