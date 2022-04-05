const express = require("express");
const router = express.Router();

const testRouter = require('./testRoute');
const moviesRouter = require("./MoviesRoute");

router.use('/test', testRouter);
router.use("/movies", moviesRouter);
module.exports = router;