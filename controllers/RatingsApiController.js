const RatingService = require("../services/RatingService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

/*
    -로그인 유/무 미들웨어 필요 (유 : userId 할당, 무 : next())    
*/
const CreateRating = async (req, res, next) => {

    try {
        const { movieId, ratingVal } = req.body;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 9;

        await RatingService.RatingCheck(ratingVal, movieId, userId, res);
        await RatingService.UpdateRating(ratingVal, movieId, userId, res);

        res.status(201).json({message : "create rating"});
    } catch (error) {
        next(error);
        await prisma.$disconnect();
    } finally {
        await prisma.$disconnect();
    }

}

/*
    -로그인 유/무 미들웨어 필요 (유 : userId 할당, 무 : next())    
*/
const UpdateRating = async (req, res, next) => {

    try {
        const { movieId, ratingVal } = req.body;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 9;

        await RatingService.RatingCheck(ratingVal, movieId, userId, res);
        await RatingService.UpdateRating(ratingVal, movieId, userId, res);

        res.status(200).json({message : "update rating"});
    } catch (error) {
        next(error);
        await prisma.$disconnect();
    } finally {
        await prisma.$disconnect();
    }

}

/*
    -로그인 유/무 미들웨어 필요 (유 : userId 할당, 무 : next())    
*/
const DeleteRating = async (req, res, next) => {

    try {
        const movieId = req.headers.movieid;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 9;
        
        await RatingService.DeleteRating(movieId, userId, res);

        res.status(200).json({message : "delete rating"});
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

module.exports = { error, CreateRating, UpdateRating, DeleteRating }