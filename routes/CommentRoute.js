const express = require("express");
const router = express.Router();

const CommentController = require("../controllers/CommentController");

router.get("/content/:movieId", CommentController.CommentSelect);
router.get("/list/:movieId", CommentController.CommentList);
router.post("/list/:movieId", CommentController.CommentAdd);
router.put("/list/:movieId", CommentController.CommentModify);
router.delete("/list/:movieId", CommentController.CommentDelete);
router.post("/like", CommentController.CommentLikePush);
router.delete("/like/:commentId", CommentController.CommentLikeDelete);
router.get("/like/:commentId", CommentController.CommentLikeGet);
router.use("/", CommentController.error);

module.exports = router;
