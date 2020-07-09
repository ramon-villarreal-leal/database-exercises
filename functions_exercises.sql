USE employees;

SHOW TABLES;

SELECT *
FROM employees;


#
1# Update your queries for employees whose names
# start and end with 'E'. Use concat() to
# combine their first and last name
# together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name), first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E'
ORDER BY emp_no;

# lAURAS WAY
SELECT emp_no, birth_date, CONCAT(first_name, ' ',  last_name) AS name, gender, hire_date
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;



# SELECT * FROM employees
# WHERE last_name LIKE 'E%'
#    OR last_name LIKE '%E'
# ORDER BY emp_no;

# 2
# For your query of employees born on Christmas and
# hired in the 90s, use datediff() to find how many days they have
# been working at the company (Hint: You will also need to use now() or curdate())
SELECT *, CONCAT('Days at company: ', DATEDIFF(NOW(), hire_date))
FROM employees WHERE hire_date > '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

