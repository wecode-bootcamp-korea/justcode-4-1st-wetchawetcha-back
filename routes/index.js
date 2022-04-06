const express = require('express');
const router = express.Router();


const UserRouter = require('./UserRoute');
const testRouter = require("./testRoute");
const MovieRoute = require("./MovieRoute");
const CommentRoute = require("./CommentRoute");

router.use("/test", testRouter);
router.use("/Movie", MovieRoute);
router.use('/user', UserRouter);
router.use("/comment", CommentRoute);

module.exports = router;
