const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const getMovieByGenre = async genreId => {
  return await prisma.$queryRaw`
    SELECT
    movies.id AS id,
    movies.name AS name,
    movies.poster_url AS poster_url,
    movies_genre.genre_name AS genre,
    movies_country.country_name AS country
    FROM movies
    JOIN movies_genre ON movies.genre_id = movies_genre.id 
    JOIN movies_country ON movies.country_id = movies_country.id
    WHERE movies_genre.id = ${genreId}
  `;
};

module.exports = {
  getMovieByGenre,
};
