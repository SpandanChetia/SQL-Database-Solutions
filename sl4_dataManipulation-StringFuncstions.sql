/*                                     MySQL SYNTAX
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select concat_ws(' ', author_fname, author_lname) as authors from books;

select substr(author_lname, 1, 1) from books;

select concat(substr(title, 1, 10), '...') as 'short title' from books;

-- ***************** REPLACE & REVERSE *****************

select replace('Spandan Aryan', ' ', ' and '); 

select reverse('Spandan');

-- ***************** OTHER FUNCS ***********************

SELECT INSERT('Hello Bobby', 6, 0, 'There'); 
 
SELECT LEFT('omghahalol!', 3);
 
SELECT RIGHT('omghahalol!', 4);
 
SELECT REPEAT('ha', 4);
 
SELECT TRIM('  pickle  ');

-- ******************** REDEFINING SELECTIONS ************************	

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367),
           ('HP', 'Spandan', 'Chetia', 2018, 1000, 233);

select * from books;
select distinct concat_ws(' ', author_fname, author_lname) as'Full Names' from books;
select distinct author_fname, author_lname, title from books order by author_lname desc, author_fname desc;

select distinct author_fname, author_lname, title from books order by author_lname desc, author_fname desc limit 1 offset 1;
*/

-- Table Creation
CREATE TABLE books 
(
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT
);

-- Inserting Data
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
('Where I\'m Calling From: Selected Stories', 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- Selecting concatenated author names
-- Output: Full names of authors
SELECT author_fname + ' ' + author_lname AS authors 
FROM books;

-- Selecting the first character of author_lname
-- Output: First character of each author's last name
SELECT SUBSTRING(author_lname, 1, 1) 
FROM books;

-- Selecting title with a short form
-- Output: Title truncated to 10 characters followed by '...'
SELECT LEFT(title, 10) + '...' AS short_title 
FROM books;

-- Replace and Reverse operations
-- Output: 'Spandan and Aryan'
SELECT REPLACE('Spandan Aryan', ' ', ' and ') AS replaced_string;

-- Output: 'nadnapS'
SELECT REVERSE('Spandan') AS reversed_string;

-- Other Functions
-- Output: 'Hello There'
SELECT STUFF('Hello Bobby', 6, 0, 'There') AS modified_string;

-- Output: 'omg'
SELECT LEFT('omghahalol!', 3) AS left_string;

-- Output: 'lol!'
SELECT RIGHT('omghahalol!', 4) AS right_string;

-- Output: 'hahaha'
SELECT REPLICATE('ha', 4) AS repeated_string;

-- Output: 'pickle'
SELECT LTRIM(RTRIM('  pickle  ')) AS trimmed_string;

-- Inserting additional records
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES 
    ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367),
    ('HP', 'Spandan', 'Chetia', 2018, 1000, 233);

-- Selecting all records
-- Output: All records in the books table
SELECT * 
FROM books;

-- Selecting distinct full names
-- Output: Distinct full names of authors
SELECT DISTINCT author_fname + ' ' + author_lname AS Full_Names 
FROM books;

-- Selecting distinct author names and titles with ordering
-- Output: Distinct author names and titles, ordered by last and first names in descending order
SELECT DISTINCT author_fname, author_lname, title 
FROM books 
ORDER BY author_lname DESC, author_fname DESC;

-- Pagination for distinct author names and titles
-- Output: Author names and titles, skipping the first row and fetching the next row based on the ordering
SELECT author_fname, author_lname, title 
FROM books 
ORDER BY author_lname DESC, author_fname DESC
OFFSET 1 ROWS FETCH NEXT 1 ROW ONLY;
