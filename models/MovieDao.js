const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const getMovies_Search = async keyword => {
  keyword = "%" + keyword + "%";
  const selectedMovies = await prisma.$queryRaw`
  SELECT movies.name
  FROM movies
  WHERE movies.name LIKE ${keyword};`;
  return await selectedMovies;
};

module.exports = { getMovies_Search };
