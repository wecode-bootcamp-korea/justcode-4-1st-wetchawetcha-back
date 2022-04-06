const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const getPopularMovies = async () => {
  return await prisma.$queryRaw`
  SELECT
  movies.name as name,
  wants.movie_id AS movie_id,
  movies.poster_url as poster_url,
  movies.release_date AS release_date,
  movies_genre.genre_name AS genre_name,
  movies_country.country_name AS country_name,
  COUNT(movie_id) AS want_count
  FROM wants JOIN movies ON wants.movie_id = movies.id
  JOIN movies_genre ON movies.genre_id = movies_genre.id 
  JOIN movies_country ON movies.country_id = movies_country.id
  WHERE wants.want=1
  GROUP BY movie_id,want
  order by COUNT(movie_id) desc
  limit 20;
  `;
};

module.exports = {
  getPopularMovies
};
