CREATE DATABASE join_test_db;

SHOW DATABASES;

SELECT database();


USE join_test_db;

describe roles;

DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

DESCRIBE users;

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

# JOIN/INNER JOIN
SELECT users.name as user_name, roles.name as role_name FROM users
JOIN roles ON users.role_id = roles.id;

# LEFT JOIN
SELECT users.name AS user_name, roles.name AS role_name FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN
SELECT users.name AS user_name, roles.name AS role_name FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# SWAPPED ORDERS
SELECT users.name as user_name, roles.name as role_name FROM roles
LEFT JOIN users ON users.role_id = roles.id;



USE employees;
select database();

show tables;

select * from employees;

# START WITH DEPARTMENTS TABLE AND JOIN
#
SELECT dept.dept_name AS 'Department Name', CONCAT (emp.first_name, ' ', emp.last_name) AS 'Department Manager'
from employees as emp
        JOIN dept_manager as de
            ON de.emp_no = emp.emp_no
        join departments as dept
            ON de.dept_no = dept.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept.dept_name;



# managers who are female

SELECT dept.dept_name AS 'Department Name', CONCAT (emp.first_name, ' ', emp.last_name) AS 'Department Manager'
from employees as emp
         JOIN dept_manager as de
              ON de.emp_no = emp.emp_no
         join departments as dept
              ON de.dept_no = dept.dept_no
WHERE de.to_date = '9999-01-01' and gender = 'F'
ORDER BY dept.dept_name;





# Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title AS Title, COUNT(dept_emp.emp_no) AS Count
FROM departments
         JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
         JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY Title;

# second way to do above

SELECT titles.title AS Title, COUNT(dept_emp.emp_no) AS Count
FROM titles
         JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
         JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Customer Service' AND titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01'
GROUP BY Title;


# Find the current salary of all current managers.

SELECT departments.dept_name AS 'Department Name', CONCAT(emp.first_name, ' ', emp.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM departments
         JOIN dept_manager AS dm ON departments.dept_no = dm.dept_no
         JOIN employees AS emp ON emp.emp_no = dm.emp_no
         JOIN salaries ON emp.emp_no = salaries.emp_no
WHERE dm.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%'
ORDER BY departments.dept_name;