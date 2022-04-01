const WantDao = require("../models/WantDao");
const errService = require("./errorService");

const WantCheck = async (movieId, userId, res) => {
    const movie = await getmovie(movieId);

    if(movie.length === 0) {       
        errService.errorHandler(400, "BAD_REQUEST", res);
    }    
    const user = await getuser(userId);

    if(user.length === 0) {
        errService.errorHandler(409, "EXSITING_USER", res);
    }
}

const getuser = async (userId) => {
    return await WantDao.getuserDao(userId);
}

const getmovie = async (movieId) => {
    return await WantDao.getmovieDao(movieId);
}

const CreateWant = async (movieId, userId) => {
    await WantDao.CreateWantDao(movieId, userId);
}

const UpdateWant = async (movieId, userId) => {
    await WantDao.UpdateWantDao(movieId, userId);
}

module.exports = { WantCheck, CreateWant, UpdateWant }