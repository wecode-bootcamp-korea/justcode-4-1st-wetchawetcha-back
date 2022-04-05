const express = require("express");
const router = express.Router();

const CarouselApiController = require("../controllers/MovieController");

router.get("/category", CarouselApiController.Carousel);
router.use("/", CarouselApiController.error);

module.exports = router;
