/* By using high_school From the first project,
We created a copied version and named it high_school_2*/

-----------------------------------------------------------------------

/* Creating a table "Outstanding_Students" from "Students_2" 
where the cumulative average higher than 90 */
CREATE TABLE Outstanding_Students
SELECT * FROM students_2 
WHERE Students_GPA > 90 
ORDER BY Students_GPA ASC;

/* Creating a table "Failed_Students" from "Students_2" 
where the cumulative average less than 60 */
CREATE TABLE Failed_Students AS
SELECT * FROM students_2 
WHERE Students_GPA < 60 
ORDER BY Students_GPA ASC;

-- Displaying student names that start with letter "A" (LIKE Function)
SELECT * 
FROM students_2 
WHERE Students_name 
LIKE 'A%';

/* Applying AVG, MAX and MIN (Aggregate functions) 
to the Students_GPA and add a clear label to the result */
SELECT
AVG(Students_GPA) AS AVG_GPA,
MAX(Students_GPA) AS MAX_GPA,
MIN(Students_GPA) AS MIN_GPA
FROM students_2;

/* Display the names of outstanding students in 
sixth-level with a perfect cumulative average of 100 */
SELECT * 
FROM students_2 
WHERE Academic_level = 6 
AND Students_GPA =100;

-- Display first-level students aged between 15 and 16
SELECT *
FROM students_2
WHERE academic_level = 1
AND Birth_day >= '2008-01-01';

-- Display the number of students in Level 2
SELECT COUNT(*) 
FROM students_2 
WHERE Academic_level = 2;

-- Review students paths in school without repetition
SELECT DISTINCT Track 
FROM students_2;

-- Display material names in capital letters
SELECT UPPER(Material_name) 
FROM materials_2;

-- Display the rounded average cumulative GPA using numeric functions
SELECT ROUND(AVG(Students_GPA), 0) 
FROM students_2;

-- Update rows in Students_gender: change F to Female and M to Male using (string functions)
-- Update 'F' to 'Female'
UPDATE students_2
SET Students_gender = CONCAT('Fe', 'male')
WHERE Students_gender = 'F';
-- Update 'M' to 'Male'
UPDATE students_2
SET Students_gender = CONCAT('Ma', 'le')
WHERE Students_gender = 'M';

-- In a new table, update cumulative GPA with less than 60 by increasing it by 5 grades
CREATE TABLE Updated_GPA
SELECT Students_id, Students_GPA + 5 AS Updated_GPA
FROM students_2
WHERE Students_GPA < 60;