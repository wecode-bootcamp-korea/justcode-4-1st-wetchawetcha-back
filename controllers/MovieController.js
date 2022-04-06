const movieService = require("../services/MovieService");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const MoviesBy = async (req, res, next) => {
    try {


if(!!req.query.search){

      const searchedMovies = await movieService.SearchMoviesByKeyword(
        req.query.search
      );
  
      res.status(201).json({ searchedMovies });

}
if(!!req.query["genre-name"]){
  const Movie = await movieService.getMovieByGenre(req.query["genre-name"]);
    res.status(200).json({ Movie });
}
    } catch (error) {
      next(error);
      await prisma.$disconnect();
    } finally {
      await prisma.$disconnect();
    }
};

const watchaCollection = async (req, res, next) => {

    try {
        const { partitionLimit } = req.query;

        const watchaCollectionData = await movieService.getWatchaCollection(partitionLimit, res);
        
        res.status(200).json({watchaCollectionData : watchaCollectionData});
    } catch (error) {
        next(error);
        await prisma.$disconnect();
    } finally {
        await prisma.$disconnect();
    }

}

/*    
    -movie_story의 값 프론트에서 테스트 후 \r\n -> <br/> 필요시 변경    
*/
const movie = async (req, res, next) => {

    try {
        const { id } = req.params;

        const movieInfo = await movieService.getMovie(id, res);
        
        //줄바꿈 (movie_story)
        //detailViewInfo[0].movie_story = detailViewInfo[0].movie_story.replaceAll("\r\n","<br/>");
        //console.log(detailViewInfo[0].movie_story);
        
        res.status(200).json({movieInfo : movieInfo});
    } catch (error) {
        next(error);
        await prisma.$disconnect();
    } finally {        
        await prisma.$disconnect();
    }

}

const movieImages = async (req, res, next) => {

    try {
        const { id } = req.params;

        const movieImages = await movieService.getMovieImages(id, res);
        
        res.status(200).json({movieImages : movieImages});
    } catch (error) {
        next(error);
        await prisma.$disconnect();
    } finally {        
        await prisma.$disconnect();
    }

}

const Carousel = async (req, res, next) => {
  try {
    const CarouselData = await movieService.CarouselCategory(
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
}

module.exports = { movie, error, movieImages, watchaCollection, Carousel ,MoviesBy}
