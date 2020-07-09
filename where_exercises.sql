USE employees;

SHOW TABLES;

SELECT * FROM employees;





# FIRST ONE
SELECT * FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE first_name = 'Irena'
                            OR first_name ='Vidya'
                            OR first_name = 'Maya';

# condition male
SELECT * FROM employees WHERE first_name = 'Irena' AND gender = 'M'
                           OR first_name ='Vidya' AND gender = 'M'
                           OR first_name = 'Maya' AND gender = 'M';

# QUESTION ABOUT THIS
SELECT * FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
    AND gender = 'M';


# second starts with E
SELECT * from employees
where last_name LIKE 'E%';

# 3RD find all hired employees in the 90s
select * from employees
where hire_date between '1990-01-01' and '1999-12-31';

# 4rd find all employees born on christmas
select * from employees
where birth_date like '%12-25';

# 5th Find all employees with a 'q' in their last name — 1,873 rows.
select * from employees
where last_name like '%q%';

# updating bottom last mame starts with e

SELECT * FROM employees
WHERE last_name LIKE 'e%'
or last_name like '%e';

# SAME THING BUT USING AND CONDITION
SELECT * FROM employees
WHERE last_name LIKE 'e%'
AND last_name like '%e';


# hired in the 90s and born on christmas
select * from employees
where hire_date between '1990-01-01' and '1999-12-31'
AND birth_date like '%12-25';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select * from employees
where last_name like '%q%'
and last_name not like '%qu%';

