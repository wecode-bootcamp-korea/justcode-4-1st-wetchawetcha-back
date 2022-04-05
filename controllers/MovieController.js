const SimilarMovieService = require("../services/MovieService");

const getMovieByGenre = async (req, res) => {
  try {
    const Movie = await SimilarMovieService.getMovieByGenre(req.query["genre-id"]);
    res.status(200).json({ Movie });
  } catch (err) {
    console.log(err);
    return res.status(err.statusCode || 500).json({ message: err.message });
  }
};

module.exports = {
  getMovieByGenre,
};
