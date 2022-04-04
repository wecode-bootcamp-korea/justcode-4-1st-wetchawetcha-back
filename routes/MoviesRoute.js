const express = require("express");
const router = express.Router();

const MoviesController = require("../controllers/MoviesController");
router.get("/genre",MoviesController.getMoviesByGenre);
module.exports = router;