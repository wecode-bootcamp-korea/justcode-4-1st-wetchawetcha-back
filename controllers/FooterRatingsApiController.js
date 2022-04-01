const FooterRatingsService = require("../services/FooterRatingsService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const FooterRatings = async (req, res, next) => {

    try {
        const toralRatings = await FooterRatingsService.getRatings();
        
        res.status(200).json({footerData : toralRatings});
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

module.exports = { error, FooterRatings }