const express = require("express");
const router = express.Router();

const movieController = require("../controllers/MovieController");
const MovieController = require("../controllers/MovieController");
const CarouselApiController = require("../controllers/MovieController");

router.get("/watcha-collection", movieController.watchaCollection);
router.get("/category", CarouselApiController.Carousel);
router.get("/", MovieController.SearchMoviesByKeyword);
router.get("/:id", movieController.movie);
router.get("/images/:id", movieController.movieImages);
router.use("/", movieController.error);

module.exports = router;
