const MoviesDao = require('../models/MoviesDao')

const getMoviesByGenre= async (genreId) => {
	return await MoviesDao.getMoviesByGenre(genreId)
}


module.exports = {getMoviesByGenre}