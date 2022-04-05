const express = require("express");
const router = express.Router();

const MovieController = require("../controllers/MovieController");

router.get("/", MovieController.SearchMoviesByKeyword);
router.use("/", MovieController.error);

module.exports = router;
