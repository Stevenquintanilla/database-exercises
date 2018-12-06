USE codeup_test_db;

SELECT "Pink Floyd albums" as 'Pink Floyd albums';
SELECT * FROM albums where artist="Pink Floyd";
SELECT "Back In Black release Date" as 'Back In Black release Date';
SELECT release_date FROM albums where name="Back in Black";
SELECT "Genre of the Eagles" as 'Genre of the Eagles';
SELECT genre FROM albums where artist="Eagles";
SELECT "All albums between 1970 & 1980" as 'All albums between 1970 & 1980';
SELECT * FROM albums where release_date < 1980 && release_date > 1970;
SELECT "albums that sold more than 35 million" as 'albums that sold more than 35 million';
SELECT * FROM albums where sales > 35;
SELECT "albums that are either Rock or Disco" as 'albums that are either Rock or Disco';
SELECT * FROM albums where genre="Rock" || genre="Disco";




