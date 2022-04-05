const MovieService = require("../services/MovieService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const SearchMoviesByKeyword = async (req, res, next) => {
  try {
    const MovieDatas = await MovieService.SearchMoviesByKeyword(
      req.query.search
    );

    res.status(201).json({ MovieDatas });
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

module.exports = { error, SearchMoviesByKeyword };
