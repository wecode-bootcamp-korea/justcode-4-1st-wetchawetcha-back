const express = require("express");
const router = express.Router();

const ratingsController = require("../controllers/RatingsController");

router.get("/users-ratings", ratingsController.allRatings);
router.get("/movie-ratings/:movieId", ratingsController.movieRatings);
router.get("/:movieId", ratingsController.userRating);
router.post("/", ratingsController.createRating);
router.patch("/", ratingsController.updateRating);
router.delete("/:movieId", ratingsController.deleteRating);
router.use("/", ratingsController.error);

module.exports = router;