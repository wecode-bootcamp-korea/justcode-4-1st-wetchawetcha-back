const express = require("express");
const router = express.Router();

const MovieController = require("../controllers/MovieController");
router.get("/p", MovieController.getPopularMovies);
module.exports = router;
