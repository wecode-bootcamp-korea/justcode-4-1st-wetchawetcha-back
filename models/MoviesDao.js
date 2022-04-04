const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const getMoviesByGenre = async genreId => {
  return await prisma.$queryRaw`
    SELECT
    movies.id AS id,
    movies.name AS name,
    movies.poster_url AS poster_url
    FROM movies
    JOIN movies_genre ON movies.genre_id = movies_genre.id 
    WHERE movies_genre.id = ${genreId}
  `;
};

module.exports = {
  getMoviesByGenre,
};
