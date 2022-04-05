const express = require("express");
const router = express.Router();

const testRouter = require('./testRoute');
const movieRoute = require('./MovieRoute');

router.use('/movie', movieRoute);
router.use('/test', testRouter);

module.exports = router;