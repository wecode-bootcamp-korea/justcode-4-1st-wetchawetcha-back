const { PrismaClient, Prisma } = require("@prisma/client");

const prisma = new PrismaClient();

const DetailDao = async (id, userId) => {
    return prisma.$queryRaw`
    select 
        mo.id movie_id,
        mo.name movie_name,
        mo.release_date,
        (select genre_name from movies_genre where id = mo.genre_id) genre_name,
        (select country_name from movies_country where id = mo.country_id) country_name,
        mo.run_time,
        mo.age movie_age,
        (select count(id) from ratings where movie_id = mo.id) ratings_total,
        (select truncate(avg(count),1) from ratings where movie_id = mo.id) ratings_avg,
        mo.story movie_story,
        mo.poster_url,
        (select group_concat(url) from images where movie_id = mo.id) images_url
        ${!!userId ? 
            Prisma.sql`
            ,ifnull((select ra.count from ratings ra join users ur on ra.user_id = ur.id where ra.movie_id = mo.id and ur.id = ${userId}), 'N') rating_val,
            ifnull((select wa.want from wants wa join users ur on wa.user_id = ur.id where wa.movie_id = mo.id and ur.id = ${userId}), 'N') want_val`
            :  
            Prisma.empty
        }
    from movies mo
    where mo.id = ${id}`;
}

module.exports = { DetailDao }