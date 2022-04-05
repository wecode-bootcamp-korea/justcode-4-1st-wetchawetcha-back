const movieDao = require("../models/MovieDao");
const errService = require("./errorService");

const getMovie = async (id, res) => {
    const movieData = await movieDao.getMovieDao(id);

    if(!movieData) {
        errService.errorHandler(400, "BAD_REQUEST", res);
    }
    return movieData;
}


module.exports = { getMovie }