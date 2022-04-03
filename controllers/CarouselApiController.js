const CarouselCategory = require("../services/CarouselApiService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const Carousel = async (req, res, next) => {
  try {
    const CarouselData = await CarouselCategory.CarouselCategory(
      req.query.CategoryId,
      req.query.limit
    );

    res.status(201).json({ CarouselData });
  } catch (error) {
    next(error);
    await prisma.$disconnect();
  } finally {
    await prisma.$disconnect();
  }
};

const error = (err, req, res, next) => {
  console.error(err);
};

module.exports = { error, Carousel };
