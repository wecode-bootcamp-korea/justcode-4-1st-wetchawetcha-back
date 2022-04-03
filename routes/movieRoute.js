const express = require("express");
const router = express.Router();

const SimilarMovieController = require("../controllers/SimilarMovieController");


router.get("/",SimilarMovieController.getMoviesByGenre);
router.get("/genre",SimilarMovieController.getGenres);
module.exports = router;