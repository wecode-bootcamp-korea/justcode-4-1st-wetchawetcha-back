const RatingsDao = require("../models/RatingsDao");

const getRatings = async () => {
    return await RatingsDao.getRatingsDao();
}

module.exports = { getRatings }