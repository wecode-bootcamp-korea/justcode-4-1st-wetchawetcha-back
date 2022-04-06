const MovieDao = require("../models/MovieDao");
const errService = require("./errorService");

const SearchMoviesByKeyword = async (keyword) => {
  const MovieDatas = await MovieDao.getMovies_Search(keyword);
  
  const searchedMovies={
"keyword":keyword,
"MovieList":MovieDatas
  }

  return searchedMovies;
};

module.exports = { SearchMoviesByKeyword };
