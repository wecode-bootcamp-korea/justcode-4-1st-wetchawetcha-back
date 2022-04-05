const express = require("express");
const router = express.Router();

const ratingsRoute = require('./RatingsRoute');
const testRouter = require('./testRoute');

router.use('/rating', ratingsRoute);
router.use('/test', testRouter);

module.exports = router;