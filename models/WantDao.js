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

const CreateWantDao = async (movieId, userId) => {
    await prisma.$queryRaw`
        insert into wants (want, user_id, movie_id) values(true, ${userId}, ${movieId})`
}

const UpdateWantDao = async (movieId, userId) => {
    await prisma.$queryRaw`
        update wants set want = false where user_id = ${userId} and movie_id = ${movieId}`
}

module.exports = { getuserDao, getmovieDao, CreateWantDao, UpdateWantDao }