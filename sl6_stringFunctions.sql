-- string_functions.sql

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
