const MovieDao = require("../models/MovieDao");

const getPopularMovies = async () => {
  return  await MovieDao.getPopularMovies();
};

module.exports = { getPopularMovies };
