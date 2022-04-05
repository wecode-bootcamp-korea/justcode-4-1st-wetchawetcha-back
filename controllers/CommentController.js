const CommentService = require("../services/CommentService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const CommentList = async (req, res, next) => {
  try {
    const { id } = req.params;

    const CommentData = await CommentService.CommentList(id);

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
    const { id } = req.params;
    const movie_id = id;

    const { comment } = req.body;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentAdd = await CommentService.CommentAdd(movie_id, comment, 10);

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
    const { id } = req.params;
    const movie_id = id;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentSelect(movie_id, 1);

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
    const { id } = req.params;
    const movie_id = id;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const { comment } = req.body;

    const CommentResult = await CommentService.CommentModify(
      movie_id,
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
    const { id } = req.params;
    const movie_id = id;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentDelete(movie_id, 6);

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
    const { comment_id } = req.body;

    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentLikePush(comment_id, 1);

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
    const { comment_id } = req.params;
    //회원 아이디 받아오기
    //foundUser = req.foundUser;

    const CommentResult = await CommentService.CommentLikeDelete(comment_id, 1);

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
    const { comment_id } = req.params;

    const CommentLikeResult = await CommentService.CommentLikeGet(comment_id);

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
