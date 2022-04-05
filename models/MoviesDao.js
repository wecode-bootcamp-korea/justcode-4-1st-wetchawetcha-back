const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();


const getPopularMovies = async () => {
  return await prisma.$queryRaw`
  SELECT
  wants.movie_id AS movie_id,
  movies.name as name,
  movies.poster_url as poster_url,
  COUNT(movie_id) 
  FROM wants JOIN movies ON wants.movie_id = movies.id
  WHERE wants.want=1
  GROUP BY movie_id,want
  order by COUNT(movie_id) desc
  limit 20;
  `;
};

const getAvgRating = async (movie_id) => {
  return await prisma.$queryRaw`
  SELECT
  avg(ratings.count) as avgVal
  FROM ratings 
  WHERE ratings.movie_id=${movie_id};
  `;
};


module.exports = {
  getPopularMovies,getAvgRating
};
