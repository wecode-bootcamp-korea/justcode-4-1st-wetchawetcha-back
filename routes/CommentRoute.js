const express = require("express");
const router = express.Router();

const CommentController = require("../controllers/CommentController");

router.get("/content", CommentController.CommentSelect);
router.get("/", CommentController.CommentList);
router.post("/", CommentController.CommentAdd);
router.put("/", CommentController.CommentModify);
router.delete("/", CommentController.CommentDelete);

router.post("/like", CommentController.CommentLikePush);
router.delete("/like", CommentController.CommentLikeDelete);
router.get("/like", CommentController.CommentLikeGet);

router.use("/", CommentController.error);

module.exports = router;
