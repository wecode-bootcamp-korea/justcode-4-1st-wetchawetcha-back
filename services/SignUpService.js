const bcrypt = require('bcrypt');

const SignUpDao = require('../models/SignUpDao');

const signUp = async (email, password, username) => {
  if (password.length < 8) {
    const error = new Error('PASSWORD_TOO_SHORT');
    error.statusCode = 400;
    throw error;
  }

  const user = await SignUpDao.getUserByEmail(email);

  if (user.length !== 0) {
    const error = new Error('EXISTING_USER');
    error.statusCode = 409;
    throw error;
  }

  const encryptedPW = bcrypt.hashSync(password, bcrypt.genSaltSync());

  const newUser = await SignUpDao.createUser(email, encryptedPW, username);

  return newUser;
};

const checkEmail = async email => {
  const user = await SignUpDao.getUserByEmail(email);
  if (user.length == 0) {
    return false;
  } else {
    return true;
  }
};

module.exports = { signUp, checkEmail };
