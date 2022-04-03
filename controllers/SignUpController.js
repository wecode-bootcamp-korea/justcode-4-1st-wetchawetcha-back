const { use } = require('../routes');
const SignUpService = require('../services/SignUpService');

const signUp = async (req, res) => {
  try {
    const { email, password, name } = req.body;

    if (password == undefined || email == undefined || name == undefined) {
      const error = new Error('KEY_ERROR');
      error.statusCode = 400;
      throw error;
    }

    await SignUpService.signUp(email, password, name);

    res.status(201).json({ message: 'SIGNUP_SUCESS' });
  } catch (err) {
    console.log(err);
    return res.status(err.statusCode || 500).json({ message: err.message });
  }
};

const getUser = async (req, res) => {
  if (req.query.email != undefined) {
    const hasEmailInDB = await SignUpService.checkEmail(req.query.email);
    if (hasEmailInDB == true) {
      return res
        .status(200)
        .json({ message: 'GET_USERDATA_SUCESS', hasEmail: hasEmailInDB });
    } else {
      return res
        .status(200)
        .json({ message: 'GET_USERDATA_SUCESS', hasEmail: hasEmailInDB });
    }
  }
};

module.exports = {
  signUp,
  getUser,
};
