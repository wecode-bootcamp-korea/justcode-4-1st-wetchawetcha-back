const express = require("express");
const router = express.Router();

const testRouter = require("./testRoute");
const MainRoute = require("./MainRoute");

router.use("/test", testRouter);
router.use("/Main", MainRoute);

module.exports = router;
