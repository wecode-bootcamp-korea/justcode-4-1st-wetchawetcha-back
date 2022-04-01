const express = require("express");
const router = express.Router();

const testRouter = require('./testRoute');
const DetailRoute = require('./DetailRoute');

router.use('/Detail', DetailRoute);
router.use('/test', testRouter);

module.exports = router;