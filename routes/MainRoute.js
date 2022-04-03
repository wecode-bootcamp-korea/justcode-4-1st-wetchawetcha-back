const express = require("express");
const router = express.Router();

const CarouselApiController = require("../controllers/CarouselApiController");

router.get("/Carousel", CarouselApiController.Carousel);
router.use("/", CarouselApiController.error);

module.exports = router;
