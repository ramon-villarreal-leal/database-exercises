USE employees;

SHOW TABLES;

SELECT *
FROM employees
LIMIT 5 offset 10;

SELECT first_name, last_name
FROM employees
ORDER BY last_name;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 10;

#
SELECT DISTINCT title
FROM titles;
# List the first 10 distinct last name sorted in descending order.
# Your result should look like this:
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# Find your query for employees born on Christmas and
# hired in the 90s
# from order_by_exercises.sql.
# Update it to find just the first 5 employees. Their names should be:


SELECT *
FROM employees
WHERE hire_date > '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;


SELECT *
FROM employees
WHERE hire_date > '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;


# Try to think of your results as batches, sets, or pages.
# The first five results are your first page. The five after
# that would be your second page, etc. Update the query to
# find the tenth page of results. The employee names should be:

SELECT *
FROM employees
WHERE hire_date > '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

