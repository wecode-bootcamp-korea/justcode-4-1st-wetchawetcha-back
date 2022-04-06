const CommentService = require("../services/CommentService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const CommentList = async (req, res, next) => {
  try {
    const movieId = req.query.movieId;

    const CommentData = await CommentService.CommentList(movieId);

    res.status(201).json({ CommentData });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const CommentAdd = async (req, res, next) => {
  try {
    const { comment, movieId } = req.body;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentAdd = await CommentService.CommentAdd(movieId, comment, 10);

    res.status(201).json({ SUCCESS: "COMMENT_INSERT" });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const CommentSelect = async (req, res, next) => {
  try {
    const movieId = req.query.movieId;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentSelect(movieId, 1);

    res.status(201).json({ CommentResult });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const CommentModify = async (req, res, next) => {
  try {
    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const { comment, movieId } = req.body;

    const CommentResult = await CommentService.CommentModify(
      movieId,
      1,
      comment
    );

    res.status(201).json({ SUCCESS: "COMMENT_MODIFY" });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const CommentDelete = async (req, res, next) => {
  try {
    const movieId = req.query.movieId;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentDelete(movieId, 1);

    res.status(201).json({ SUCCESS: "COMMENT_DELETE" });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const CommentLikePush = async (req, res, next) => {
  try {
    const { commentId } = req.body;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentLikePush(commentId, 1);

    res.status(201).json({ SUCCESS: "COMMENTLIKE_PLUS" });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const CommentLikeDelete = async (req, res, next) => {
  try {
    const commentId = req.query.commentId;
    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentLikeDelete(commentId, 1);

    res.status(201).json({ SUCCESS: "COMMENTLIKE_DELETE" });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const CommentLikeGet = async (req, res, next) => {
  try {
    const commentId = req.query.commentId;

    const CommentLikeResult = await CommentService.CommentLikeGet(commentId);

    res.status(201).json({ CommentLikeResult });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const error = (err, req, res, next) => {
  console.error(err);
};

module.exports = {
  error,
  CommentList,
  CommentAdd,
  CommentSelect,
  CommentModify,
  CommentDelete,
  CommentLikePush,
  CommentLikeDelete,
  CommentLikeGet,
};
