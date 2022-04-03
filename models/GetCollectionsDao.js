const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

const GetCollectionsDao = async () => {
    return await prisma.$queryRaw`
        select 
            mcra.movie_id,
            mcra.category_id,
            ct.category_name,
            mcra.movie_rank,
            mo.poster_url
        from (
            select
                id,
                category_id,
                movie_id,
                rank() over (partition by mc.category_id order by mc.id) movie_rank
            from movies_categories mc
        ) mcra
        join categories ct
        on mcra.category_id = ct.id
        join movies mo
        on mo.id = mcra.movie_id
        where mcra.movie_rank <= 4
        order by mcra.category_id, mcra.movie_rank`
}

module.exports = { GetCollectionsDao }