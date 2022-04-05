const ratingsService = require("../services/RatingsService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const movieRatings = async (req, res, next) => {

    try {
        const { movieId } = req.params;

        const movieRatingsInfo = await ratingsService.getMovieRatings(movieId);        

        res.status(200).json({movieRatingsInfo : movieRatingsInfo});
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
const userRating = async (req, res, next) => {

    try {
        const { movieId } = req.params;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 1;

        const userRatingInfo = await ratingsService.getUserRating(movieId, userId);

        res.status(200).json({userRatingInfo : userRatingInfo});
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
const createRating = async (req, res, next) => {

    try {
        const { movieId, ratingVal } = req.body;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 5;

        await ratingsService.ratingCheck(ratingVal, movieId, userId, res);
        await ratingsService.createRating(ratingVal, movieId, userId, res);

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
const updateRating = async (req, res, next) => {

    try {
        const { movieId, ratingVal } = req.body;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 5;

        await ratingsService.ratingCheck(ratingVal, movieId, userId, res);
        await ratingsService.updateRating(ratingVal, movieId, userId, res);

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
const deleteRating = async (req, res, next) => {

    try {
        const { movieId } = req.params;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 5;
        
        await ratingsService.deleteRating(movieId, userId);

        res.status(204).json({message : "delete rating"});
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

module.exports = { error, createRating, updateRating, deleteRating, movieRatings, userRating }