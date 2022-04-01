const express = require("express");
const router = express.Router();

const DetailController = require("../controllers/DetailController");
const RatingsApiController = require("../controllers/RatingsApiController");

router.get("/:id", DetailController.Detail);
router.post("/Rating", RatingsApiController.CreateRating);
router.put("/Rating", RatingsApiController.UpdateRating);
router.delete("/Rating", RatingsApiController.DeleteRating);
router.use("/", DetailController.error);

module.exports = router;