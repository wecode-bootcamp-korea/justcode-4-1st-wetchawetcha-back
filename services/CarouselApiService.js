const CarouselApiDao = require("../models/CarouselApiDao");
const errService = require("./errorService");

const CarouselCategory = async (CategoryId, limit, res) => {
  const CategoryData = await CarouselApiDao.CategoryData(CategoryId, limit);

  return CategoryData;
};

module.exports = { CarouselCategory };
