const SimilarMovieService = require("../services/MoviesService");

const getMoviesByGenre = async (req, res) => {
  try {
    const movies = await SimilarMovieService.getMoviesByGenre(req.query["genre-id"]);
    res.status(200).json({ movies });
  } catch (err) {
    console.log(err);
    return res.status(err.statusCode || 500).json({ message: err.message });
  }
};

module.exports = {
  getMoviesByGenre,
};
