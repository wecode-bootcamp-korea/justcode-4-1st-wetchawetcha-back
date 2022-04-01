const DetailDao = require("../models/DetailDao");
const errService = require("./errorService");

const DetailView = async (id, userId, res) => {
    const getDetailData = await DetailDao.DetailDao(id, userId);

    if(!getDetailData) {
        errService.errorHandler(400, "BAD_REQUEST", res);
    }
    return getDetailData;
}


module.exports = { DetailView }