const express = require("express");
const router = express.Router();

const movieController = require("../controllers/MovieController");


router.get("/", movieController.MoviesBy);
router.get("/:id", movieController.movie);
router.get("/:id/images/", movieController.movieImages);
router.use("/", movieController.error);

module.exports = router;