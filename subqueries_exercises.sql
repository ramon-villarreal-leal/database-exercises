use employees;


select emp_no, hire_date
from employees
where emp_no ='101010';

# sub-query
# Find all the employees with the same hire
# date as employee 101010 using a subquery.
#
# 69 Rows
select first_name, last_name, hire_date
from employees
where hire_date in (
#     select hire_date
#     from employees
#     where hire_date = '1990-10-22'
    select emp_no, hire_date
    from employees
    where emp_no ='101010'
    );

# instructors way to do it
SELECT emp_no
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);


# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

SELECT title
FROM titles
WHERE emp_no in (
    select emp_no
    from employees
    WHERE first_name = 'Aamod'
    );


SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

# Find all the current department managers that are female.

SELECT first_name, last_name
FROM employees
WHERE emp_no in (
    SELECT emp_no
    from dept_manager
    where to_date > NOW()

)
    AND gender ='F';




