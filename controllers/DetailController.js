const DetailService = require("../services/DetailService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

/*
    -로그인 유/무 미들웨어 필요 (유 : userId 할당, 무 : next())
    -movie_story의 값 프론트에서 테스트 후 \r\n -> <br/> 필요시 변경    
*/
const Detail = async (req, res, next) => {

    try {
        const { id } = req.params;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 1;

        const detailViewInfo = await DetailService.DetailView(id, userId, res);
        
        //줄바꿈 (movie_story)
        //detailViewInfo[0].movie_story = detailViewInfo[0].movie_story.replaceAll("\r\n","<br/>");
        //console.log(detailViewInfo[0].movie_story);
        
        res.status(200).json({infoData : detailViewInfo});
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

module.exports = { Detail, error}