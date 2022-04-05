const MovieDao = require('../models/MovieDao')

const getMovieByGenre= async (genreId) => {
	return await MovieDao.getMovieByGenre(genreId)
}


module.exports = {getMovieByGenre}