USE employees;

SHOW TABLES;

SELECT *
FROM employees;



# 1
# Modify your first query to order by first name.
# The first result should be Irena Reutenauer and the
# last result should be Vidya Simmen.
SELECT *
FROM employees
WHERE first_name = 'Irena' and gender = 'M'
   OR first_name = 'Vidya' and gender = 'M'
   OR first_name = 'Maya' and gender = 'M'
ORDER BY first_name;

# 2
# Update the query to order by first name and then last name.
# The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT *
FROM employees
WHERE first_name = 'Irena' and gender = 'M'
   OR first_name = 'Vidya' and gender = 'M'
   OR first_name = 'Maya' and gender = 'M'
ORDER BY first_name, last_name;

# 3
# Change the order by clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT *
FROM employees
WHERE first_name = 'Irena' and gender = 'M'
   OR first_name = 'Vidya' and gender = 'M'
   OR first_name = 'Maya' and gender = 'M'
ORDER BY last_name, first_name;

# 4
# Update your queries for employees with 'E' in their last name to sort
# he results by their employee number. Your results should not change!

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E'
ORDER BY emp_no;

# 5 Now reverse the sort order for both queries.

SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no DESC;

# 6 Change the query for employees hired in the 90s and
# born on Christmas such that the first result is the
# oldest employee who was hired last. It should be Khun Bernini.

SELECT * FROM employees WHERE hire_date > '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;



