const express = require("express");
const router = express.Router();

const testRouter = require('./testRoute');
const wantRoute = require('./WantRoute');

router.use('/want', wantRoute);
router.use('/test', testRouter);

module.exports = router;