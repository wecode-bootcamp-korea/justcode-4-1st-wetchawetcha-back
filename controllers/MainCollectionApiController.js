const MainCollectionService = require("../services/MainCollectionService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const MainCollection = async (req, res, next) => {

    try {
        const collectionData = await MainCollectionService.getCollection();
        
        res.status(200).json({collectionData : collectionData});
    } catch (error) {
        next(error);
        await prisma.$disconnect();
    } finally {
        await prisma.$disconnect();
    }

}

const error = (err, req, res, next) => {
    console.error(err);
}

module.exports = { error, MainCollection }