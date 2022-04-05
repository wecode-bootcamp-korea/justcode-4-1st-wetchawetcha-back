const express = require("express");
const router = express.Router();

const wantController = require("../controllers/WantController");

router.get("/:movieId", wantController.want);
router.post("/", wantController.CreateWant);
router.patch("/", wantController.UpdateWant);
router.use("/", wantController.error);

module.exports = router;