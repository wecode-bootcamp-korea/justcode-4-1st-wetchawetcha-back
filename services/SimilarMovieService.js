const SimilarMovieDao = require('../models/SimilarMovieDao')

const getGenres = async () => {
	return await SimilarMovieDao.getGenres()
}

const getMoviesByGenre= async (genreName) => {
	return await SimilarMovieDao.getMoviesByGenre(genreName)
}


module.exports = {getGenres,getMoviesByGenre}