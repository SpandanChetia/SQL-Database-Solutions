-- Select every column from a table
SELECT * FROM students;

-- Select specific columns
SELECT first_name, last_name, email FROM students;

-- Select with conditions
SELECT * FROM students
WHERE cgpa > 8.5 AND major = 'Computer Science'

-- Select with Sorting
SELECT * FROM students
ORDER BY enrollment_data DESC
-- ORDER BY enrollment_data ASC

-- Select with Aggregation
SELECT major, AVG(cgpa) AS average_cgpa
FROM students
GROUP BY major

SELECT count(*)
FROM students
WHERE first_name LIKE 'S%'   -- Name starts with S

-- Select with Combination of groupings
SELECT major, enrollment_date, COUNT(*) AS student_count
FROM students
GROUP BY major, enrollment_date;
-- This gives count based on combination of major and enrollment dates

-- Select with Filtering and Sorting
SELECT first_name, last_name, email
FROM students
WHERE phone_number IS NOT NULL
ORDER BY last_name;

-- Select Distinct Values
SELECT DISTINCT major FROM students;

-- Select with Limitation of tuples
/*            MYSQL Syntax
SELECT * FROM students
ORDER BY cgpa DESC
LIMIT 10;           -- TOP 10 CGPA students
*/
SELECT TOP 10 * FROM students
ORDER BY cgpa DESC;



