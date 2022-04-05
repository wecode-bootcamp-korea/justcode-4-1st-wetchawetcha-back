const MoviesDao = require("../models/MoviesDao");

const getPopularMovies = async () => {
  let out = await MoviesDao.getPopularMovies();
  await Promise.all(
    out.map(async x => {
      avgRating = await MoviesDao.getAvgRating(x["movie_id"]);
      x["avgRating"] = avgRating[0].avgVal;
    })
  );


  return await out;
};

module.exports = { getPopularMovies };
