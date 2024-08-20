-- this creates a new database called school if it doesnt exist already

CREATE DATABASE IF NOT EXISTS school;

-- to delete the database - DROP DATABASE IF EXISTS school;

CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY,
    name VARCHAR(50)   -- maximum 50 characters that name can store
)




