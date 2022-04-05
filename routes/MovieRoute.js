const express = require("express");
const router = express.Router();

const MovieController = require("../controllers/MovieController");
router.get("/genre",MovieController.getMovieByGenre);
module.exports = router;