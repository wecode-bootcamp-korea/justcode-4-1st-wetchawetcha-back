const express = require("express");
const router = express.Router();

const WantToApiController = require("../controllers/WantToApiController");

router.post("/Want", WantToApiController.CreateWant);
router.put("/Want", WantToApiController.UpdateWant);
router.use("/", WantToApiController.error);

module.exports = router;