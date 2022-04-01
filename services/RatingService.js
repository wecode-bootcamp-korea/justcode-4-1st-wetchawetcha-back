const RatingDao = require("../models/RatingDao");
const errService = require("./errorService");

const RatingCheck = async (ratingVal, movieId, userId, res) => {

    if(ratingVal <= 0) {
        errService.errorHandler(400, "BAD_REQUEST", res);
    }
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
    return await RatingDao.getuserDao(userId);
}

const getmovie = async (movieId) => {
    return await RatingDao.getmovieDao(movieId);
}

const CreateRating = async (ratingVal, movieId, userId) => {
    await RatingDao.CreateRatingDao(ratingVal, movieId, userId);
}

const UpdateRating = async (ratingVal, movieId, userId) => {
    await RatingDao.UpdateRatingDao(ratingVal, movieId, userId);
}

const DeleteRating = async (movieId, userId) => {
    await RatingDao.DeleteRatingDao(movieId, userId);
}

module.exports = { RatingCheck, CreateRating, UpdateRating, DeleteRating }