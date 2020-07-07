USE codeup_test_db;

SELECT * FROM albums;

SELECT name AS 'albums released from 1980' FROM albums WHERE release_date < 1980;

SELECT artist, release_date, name FROM albums WHERE artist = 'Micheal Jackson';


-- updating exercises
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = sales * 10;
Select * from albums;

-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Micheal Jackson';