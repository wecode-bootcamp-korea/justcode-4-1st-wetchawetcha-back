const express = require("express");
const router = express.Router();

const testRouter = require("./testRoute");
const CommentRoute = require("./CommentRoute");

router.use("/test", testRouter);
router.use("/comments", CommentRoute);

module.exports = router;
