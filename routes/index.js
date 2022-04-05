const express = require("express");
const router = express.Router();

const testRouter = require("./testRoute");
const MovieRouter = require("./MovieRoute");

router.use("/test", testRouter);
router.use("/movie", MovieRouter);
module.exports = router;
