const wantService = require("../services/WantService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const want = async (req, res, next) => {

    try {
        const { movieId } = req.params;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 1;

        const wantInfo = await wantService.getWant();

        res.status(201).json({message : "create WantTo"});
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
const CreateWant = async (req, res, next) => {

    try {
        const { movieId } = req.body;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 9;

        await WantService.WantCheck(movieId, userId, res);
        await WantService.CreateWant(movieId, userId);

        res.status(201).json({message : "create WantTo"});
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
const UpdateWant = async (req, res, next) => {

    try {
        const { movieId } = req.body;

        //const userId = req.headers.userid;
        //임시유저세팅
        const userId = 9;

        await WantService.WantCheck(movieId, userId, res);
        await WantService.UpdateWant(movieId, userId);

        res.status(200).json({message : "update WantTo"});
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

module.exports = { error, CreateWant, UpdateWant, want }