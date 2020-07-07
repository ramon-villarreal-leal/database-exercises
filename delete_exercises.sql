USE codeup_test_db;

SELECT * from albums WHERE release_date > 1991;

DELETE FROM albums WHERE release_date > 1991;

SELECT * from albums where genre LIKE '%disco%';

DELETE FROM albums WHERE genre LIKE '%disco%';

SELECT * FROM albums where artist LIKE '%pink floyd%';

DELETE FROM albums WHERE artist LIKE '%pink floyd%';
