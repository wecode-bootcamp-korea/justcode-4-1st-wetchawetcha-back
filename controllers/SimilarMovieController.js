const SimilarMovieService = require("../services/SimilarMovieService");

const getGenres = async (req, res) => {
  try {
    const genres = await SimilarMovieService.getGenres();

    res.status(200).json({ genres });
  } catch (err) {
    console.log(err);
    return res.status(err.statusCode || 500).json({ message: err.message });
  }
};

const getMoviesByGenre = async (req, res) => {
  try {
    const movies = await SimilarMovieService.getMoviesByGenre(req.query.genre);
    res.status(200).json({ movies });
  } catch (err) {
    console.log(err);
    return res.status(err.statusCode || 500).json({ message: err.message });
  }
};

module.exports = {
  getGenres,
  getMoviesByGenre,
};
