const express = require('express');
const router = express.Router();

const testRouter = require('./testRoute');
const UsersRouter = require('./UsersRoute');

router.use('/test', testRouter);
router.use('/users', UsersRouter);

module.exports = router;
