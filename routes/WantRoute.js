const express = require("express");
const router = express.Router();

const wantController = require("../controllers/WantController");

router.get("/:movieId", wantController.want);
router.post("/", wantController.createWant);
router.patch("/", wantController.updateWant);
router.use("/", wantController.error);

module.exports = router;