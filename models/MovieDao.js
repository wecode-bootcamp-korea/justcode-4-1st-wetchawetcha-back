const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const getMovies_Search = async keyword => {
  keyword = "%" + keyword + "%";
  const selectedMovies = await prisma.$queryRaw`
  SELECT
  movies.id AS id,
  movies.name AS name,
  movies.release_date AS release_date,
  movies.poster_url AS poster_url,
  movies_genre.genre_name AS genre,
  movies_country.country_name AS country
  FROM movies
  JOIN movies_genre ON movies.genre_id = movies_genre.id 
  JOIN movies_country ON movies.country_id = movies_country.id
  WHERE movies.name LIKE ${keyword};`;
  return await selectedMovies;
};

module.exports = { getMovies_Search };


