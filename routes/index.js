const express = require("express");
const router = express.Router();

const testRouter = require("./testRoute");
const MovieRoute = require("./MovieRoute");

router.use("/test", testRouter);
router.use("/Movie", MovieRoute);

module.exports = router;
