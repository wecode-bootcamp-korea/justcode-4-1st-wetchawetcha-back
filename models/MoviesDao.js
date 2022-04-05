const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();


const getPopularMovies = async () => {
  return await prisma.$queryRaw`
  SELECT
  wants.movie_id AS movie_id,
  movies.name as name,
  movies.poster_url as poster_url,
  movies_genre.genre_name AS genre,
  movies_country.country_name AS country
  COUNT(movie_id) 
  FROM wants JOIN movies ON wants.movie_id = movies.id
  JOIN movies_genre ON movies.genre_id = movies_genre.id 
  JOIN movies_country ON movies.country_id = movies_country.id
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
