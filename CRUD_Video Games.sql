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


/*
Transactions are changes to the database. (CRUD are a type of transaction then)
Practically we group SQL queries and we execute all of them together
ACID - Atomicity, Consistency, Isolation, Durability   

COMMIT, ROLLBACK, SAVEPOINT, SET TRANSACTION
we can rollback changes if we run the rollback with the commands just to see what would change and revert it. so its good for testing things.
we made and we can create savepoints 
*/


use northwind;
sELECT * FROM northwind.category;

start transaction;
update  category
set categoryname="asdgs"
where categoryid = 4;
rollback;
SELECT * FROM northwind.category;

start transaction;
update  category
set categoryname="asdgs"
where categoryid = 4;
commit;
SELECT * FROM northwind.category;
