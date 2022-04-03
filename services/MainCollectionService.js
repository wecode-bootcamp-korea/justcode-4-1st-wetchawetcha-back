const GetCollectionsDao = require("../models/GetCollectionsDao");

const getCollection = async () => {
    return await GetCollectionsDao.GetCollectionsDao();
}

module.exports = { getCollection }