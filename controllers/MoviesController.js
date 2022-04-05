const MoviesService = require("../services/MoviesService");
const getPopularMovies = async (req, res) => {
  try {
    const movies = await MoviesService.getPopularMovies();
    res.status(200).json({ movies });
  } catch (err) {
    console.log(err);
    return res.status(err.statusCode || 500).json({ message: err.message });
  }
};

module.exports = {
  getPopularMovies,
};
