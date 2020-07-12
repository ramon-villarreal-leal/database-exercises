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

select first_name, titles
from employees
where first_name = 'Aamod';



