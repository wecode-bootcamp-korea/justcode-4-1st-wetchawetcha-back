const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const CategoryData = async (CategoryId, limit) => {
  const selectcategories = await prisma.$queryRaw`
    SELECT 
    A.poster_url, A.release_date , B.country_name ,C.count , D.category_name 
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

module.exports = { CategoryData };
