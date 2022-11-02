select * from region;

UPDATE region
SET regionname = "South America"
WHERE id = 3; 

select * from region;

select * from platform;

DELETE FROM platform 
WHERE id=3;

select * from platform;

SELECT game.gamename, game.yearreleased, genre.genrename, platform.platformname, publisher.publishername, region.regionname
from game join publisher join platform join genre join region
on game.publisher_id = publisher.id and
game.platform_id = platform.id and
game.genre_id = genre.id
where region.id < 4


