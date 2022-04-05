const MovieDao = require("../models/MovieDao");
const errService = require("./errorService");

const SearchMoviesByKeyword = async (keyword) => {
  const MovieDatas = await MovieDao.getMovies_Search(keyword);
  return MovieDatas;
};

module.exports = { SearchMoviesByKeyword };
