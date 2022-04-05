const express = require("express");
const router = express.Router();

const testRouter = require('./testRoute');
const movieRoute = require('./MovieRoute');
const ratingsRoute = require('./RatingsRoute');

router.use('/movie', movieRoute);
router.use('/rating', ratingsRoute);
router.use('/test', testRouter);

module.exports = router;