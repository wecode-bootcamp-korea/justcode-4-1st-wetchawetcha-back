const express = require("express");
const router = express.Router();

const testRouter = require("./testRoute");
const movieRouter = require("./movieRoute");

router.use("/test", testRouter);
router.use("/movie", movieRouter);
module.exports = router;
