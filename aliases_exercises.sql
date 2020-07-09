USE employees;

select * from employees;

SELECT CONCAT( emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB

FROM employees
GROUP BY emp_no, first_name, last_name
ORDER BY emp_no, first_name, last_name
LIMIT 10;

