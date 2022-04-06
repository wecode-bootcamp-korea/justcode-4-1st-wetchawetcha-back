const express = require("express");
const router = express.Router();

const movieController = require("../controllers/MovieController");
const CarouselApiController = require("../controllers/MovieController");

router.get("/:id", movieController.movie);
router.get("/images/:id", movieController.movieImages);
router.get("/category", CarouselApiController.Carousel);
router.use("/", movieController.error);

module.exports = router;
