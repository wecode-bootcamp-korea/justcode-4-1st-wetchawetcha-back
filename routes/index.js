const express = require('express');
const router = express.Router();


const UserRouter = require('./UserRoute');
const testRouter = require("./testRoute");
const MovieRoute = require("./MovieRoute");

router.use("/test", testRouter);
router.use("/Movie", MovieRoute);
router.use('/user', UserRouter);


module.exports = router;
