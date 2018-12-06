USE codeup_test_db;

SELECT * FROM albums;
SELECT name FROM albums where release_date < 1980;
Select name FROM albums where artist="Eagles";

UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET release_date = release_date - 100;

UPDATE albums
SET artist = "The Beagles"
WHERE artist="Eagles";