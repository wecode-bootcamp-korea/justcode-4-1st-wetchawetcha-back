const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const getMovieDao = async (id) => {
    return prisma.$queryRaw`
    select 
        mo.id movie_id,
        mo.name movie_name,
        mo.release_date,
        (select genre_name from movies_genre where id = mo.genre_id) genre_name,
        (select country_name from movies_country where id = mo.country_id) country_name,
        mo.run_time,
        mo.age movie_age,    
        mo.story movie_story,
        mo.poster_url    
    from movies mo
    where mo.id = ${id}`;
}

const getmovieImagesDao = async (id) => {
    return prisma.$queryRaw`
    select 
        url images_url 
    from images 
    where movie_id = ${id}`;
}

const CategoryData = async (CategoryId, limit) => {
  const selectcategories = await prisma.$queryRaw`
    SELECT 
    A.poster_url, A.release_date, A.name , B.country_name ,C.count , D.category_name 
    FROM movies A
    join movies_country B on  A.country_id = B.id
    left join ratings C on A.id = C.movie_id 
    join movies_categories F on A.id = F.movie_id
    join categories D on F.category_id = D.id
    where category_id = ${CategoryId}
    Limit ${limit}
    ;`;

  return selectcategories;
};

module.exports = { getMovieDao, getmovieImagesDao, CategoryData }
