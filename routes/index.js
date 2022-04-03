const express = require('express');
const router = express.Router();

const testRouter = require('./testRoute');
const UserRouter = require('./UserRoute');

router.use('/test', testRouter);
router.use('/user', UserRouter);

module.exports = router;
