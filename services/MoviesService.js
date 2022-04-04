const SimilarMovieDao = require('../models/MoviesDao')

const getMoviesByGenre= async (genreId) => {
	return await SimilarMovieDao.getMoviesByGenre(genreId)
}


module.exports = {getMoviesByGenre}