-- aggregation_distinct_selections.sql

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
