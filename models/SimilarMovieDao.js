const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const getGenres = async () => {
  return await prisma.$queryRaw`
		SELECT id, genre_name FROM movies_genre; 
	`;
};

const getMoviesByGenre = async genreName => {
  return await prisma.$queryRaw`
    SELECT
    movies.id AS id,
    movies.name AS name,
    movies.poster_url AS poster_url
    FROM movies
    JOIN movies_genre ON movies.genre_id = movies_genre.id 
    WHERE movies_genre.genre_name = ${genreName}
  `;
};
module.exports = {
  getGenres,
  getMoviesByGenre,
};
