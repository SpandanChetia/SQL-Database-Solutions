-- Create a sample table to demonstrate the aggregation functions
CREATE TABLE books 
(
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT
);

-- Insert sample data into the books table
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King', 'Dave', 'Eggers', 2012, 154, 352);

-- 1. SUM: Adds up the values of a numeric column
SELECT SUM(stock_quantity) AS total_stock
FROM books;
-- Output: total_stock = 338

-- 2. COUNT: Counts the number of rows or non-NULL values in a column
SELECT COUNT(*) AS total_rows
FROM books;
-- Output: total_rows = 5

SELECT COUNT(author_fname) AS total_authors
FROM books;
-- Output: total_authors = 5

-- 3. AVG: Calculates the average value of a numeric column
SELECT AVG(pages) AS average_pages
FROM books;
-- Output: average_pages = 322

-- 4. MIN: Finds the minimum value in a column
SELECT MIN(released_year) AS earliest_year
FROM books;
-- Output: earliest_year = 1996

-- 5. MAX: Finds the maximum value in a column
SELECT MAX(stock_quantity) AS max_stock
FROM books;
-- Output: max_stock = 154

-- 6. GROUP BY: Aggregates data across groups defined by one or more columns
SELECT author_fname, COUNT(*) AS books_written
FROM books
GROUP BY author_fname;
-- Output:
-- author_fname | books_written
-- -------------|--------------
-- Jhumpa       | 2
-- Neil         | 2
-- Dave         | 1

-- 7. HAVING: Filters groups after aggregation, often used with GROUP BY
SELECT author_fname, COUNT(*) AS books_written
FROM books
GROUP BY author_fname
HAVING COUNT(*) > 1;
-- Output:
-- author_fname | books_written
-- -------------|--------------
-- Jhumpa       | 2
-- Neil         | 2

-- 8. SUM with GROUP BY: Adds up values per group
SELECT author_fname, SUM(stock_quantity) AS total_stock
FROM books
GROUP BY author_fname;
-- Output:
-- author_fname | total_stock
-- -------------|--------------
-- Jhumpa       | 129
-- Neil         | 55
-- Dave         | 154

-- 9. AVG with GROUP BY: Averages values per group
SELECT author_fname, AVG(pages) AS avg_pages
FROM books
GROUP BY author_fname;
-- Output:
-- author_fname | avg_pages
-- -------------|--------------
-- Jhumpa       | 244.5
-- Neil         | 384.5
-- Dave         | 352
