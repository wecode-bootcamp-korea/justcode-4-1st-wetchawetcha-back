const express = require("express");
const router = express.Router();

const movieController = require("../controllers/MovieController");

router.get("/:id", movieController.movie);
router.use("/", movieController.error);

module.exports = router;