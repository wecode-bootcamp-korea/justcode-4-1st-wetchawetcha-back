const express = require('express');
const router = express.Router();
const cors = require("cors");

const testRouter = require('./testRoute');
const movieRoute = require('./MovieRoute');
const ratingsRoute = require('./RatingsRoute');
const UserRouter = require('./UserRoute');
const CommentRoute = require("./CommentRoute");
const wantRoute = require('./WantRoute');

router.use(cors());
router.use('/movie', movieRoute);
router.use('/rating', ratingsRoute);
router.use('/want', wantRoute);
router.use('/user', UserRouter);
router.use("/comment", CommentRoute);
router.use('/test', testRouter);

module.exports = router;
