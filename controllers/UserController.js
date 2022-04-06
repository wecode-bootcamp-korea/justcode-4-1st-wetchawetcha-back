// const { use } = require('../routes');
const UserService = require('../services/UserService');

const signUp = async (req, res) => {
  try {
    const { email, password, name } = req.body;
    console.log(email)
    if (password == undefined || email == undefined || name == undefined) {
      const error = new Error('KEY_ERROR');
      error.statusCode = 400;
      throw error;
    }

    await UserService.signUp(email, password, name);

    res.status(201).json({ message: 'SIGNUP_SUCESS' });
  } catch (err) {
    console.log(err);
    return res.status(err.statusCode || 500).json({ message: err.message });
  }
};

const getUser = async (req, res) => {
  if (req.query.email != undefined) {
    const hasEmailInDB = await UserService.checkEmail(req.query.email);
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

const signIn = async (req, res) => {
  try {

      const { email, password } = req.body

      //입력값이 없다면 생기는 에러
      if (password == undefined || email == undefined) {
        const error = new Error('KEY_ERROR');
        error.statusCode = 400;
        throw error;
      }

      const infoToService = await UserService.signIn(email, password)
      if (infoToService) {
          token = infoToService
          return res
          .cookie("access_token", token, {
            httpOnly: true,
            maxAge: 3000000})
          .status(200)
          .json({ message: "Sign in succesful" });  //로그인 성공시 쿠키로 토큰 전송
      } 
  }
  catch (err) {
      console.log(err)
      return res.status(err.statusCode || 500).json({ message: err.message })
  }
}

module.exports = {
  signUp,
  getUser,
  signIn
};
