const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const getuserDao = async (userId) => {
    return await prisma.$queryRaw`
        select id from users where id = ${userId}`
}

const getmovieDao = async (movieId) => {
    return await prisma.$queryRaw`
        select id from movies where id = ${movieId}`
}

const CreateRatingDao = async (ratingVal, movieId, userId) => {
    return await prisma.$queryRaw`
        insert into ratings (user_id, movie_id, count) values(${userId}, ${movieId}, ${ratingVal})`
}

const UpdateRatingDao = async (ratingVal, movieId, userId) => {
    return await prisma.$queryRaw`
        update ratings set count = ${ratingVal} where user_id = ${userId} and movie_id = ${movieId}`
}

const DeleteRatingDao = async (movieId, userId) => {
    return await prisma.$queryRaw`
        delete from ratings where user_id = ${userId} and movie_id = ${movieId}`
}

module.exports = { getuserDao, getmovieDao, CreateRatingDao, UpdateRatingDao, DeleteRatingDao }