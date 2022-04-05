const movieDao = require("../models/MovieDao");
const errService = require("./errorService");

const getWatchaCollection = async (partitionLimit, res) => {
    if(partitionLimit <= 0 || partitionLimit > 12) {
        errService.errorHandler(400, "BAD_REQUEST", res);
    }
    return await movieDao.getWatchaCollectionDao(partitionLimit);
}

const getMovie = async (id, res) => {
    const movieData = await movieDao.getMovieDao(id);

    if(!movieData) {
        errService.errorHandler(400, "BAD_REQUEST", res);
    }
    return movieData;
}

const getMovieImages = async (id, res) => {
    const movieImagesData = await movieDao.getmovieImagesDao(id);

    if(!movieImagesData) {
        errService.errorHandler(400, "BAD_REQUEST", res);
    }
    return movieImagesData;
}

module.exports = { getMovie, getMovieImages, getWatchaCollection }