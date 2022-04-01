const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const getRatingsDao = async () => {
    return await prisma.$queryRaw`
        select count(id) ratings_all from ratings`
}

module.exports = { getRatingsDao }