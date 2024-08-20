-- this creates a new database called school if it doesnt exist already
/*
        MY SQL SYNTAX that I use

    CREATE DATABASE IF NOT EXISTS school;

    use school;

    DROP TABLE IF EXISTS school;

*/

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'school')
BEGIN
    CREATE DATABASE school;
END

use school;

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'school')
BEGIN
    DROP DATABASE school;
END



