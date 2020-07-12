# sub query lecture

SELECT column_a, column_b, column_c
FROM table_a
WHERE column_a IN (
    SELECT column_a
    FROM table_b
    WHERE column_b = true
);

use employees;

SELECT dept_no
FROM departments
WHERE dept_name = 'Customer Service';

SELECT *
FROM departments
WHERE dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
    );

select
SELECT emp_no
from dept_manager
WHERE dept_no in (
    select dept_no
    from departments
    where dept_name = 'Sales'

    )
        AND  to_date > NOW();

select CONCAT(
               (
               SELECT MAX(salary)
               from salaries
               WHERE emp_no = 10001
           ),
            ' ',
            (
                   SELECT MAX(salary)
                   from salaries
                   WHERE emp_no = 10002
                   )
           ) AS Salaries;

# Find first and last name of all department managers
# with join
select emp.first_name, emp.last_name
from employees as emp
join dept_manager AS dm ON dm.emp_no = emp.emp_no;

# with sub-query
SELECT first_name, last_name
from employees
where emp_no IN (
    select emp_no
    from dept_manager
    );

# names of employees with the 10 highest salaries
SELECT emp_no, salary
from salaries
where to_date > NOW()
order by salary desc;


select first_name, last_name, salaries.salary
from salaries
join employees on employees.emp_no = salaries.emp_no
where employees.emp_no IN (
    SELECT emp_no
    from salaries
    where to_date > NOW()
    order by salary desc
    )
order by salaries.salary desc
LIMIT 10;

SELECT CONCAT(
    (
        SELECT CONCAT(first_name, ' ', last_name)
        from employees
        where emp_no = 10001
        ),
    'works in a department',
   (
        select dept_name
       from departments
       where dept_no = 'd005'

        ),
        '.',
           );



