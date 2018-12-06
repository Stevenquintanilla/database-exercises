use employees;

describe departments;
describe dept_emp;
describe dept manager;
describe employees;
describe salaries;
describe titles;


use codeup_test_db;

alter table codeup_test_db.albums
add unique (artist, name);


INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 41.2, "Rock");

create database