USE employee_db;

-- View all dept.
SELECT * FROM departments;

-- view all roles
SELECT r.id AS 'Role ID', r.title AS 'Title', r.salary AS 'Salary', d.department_name AS 'Department'
FROM roles r
RIGHT JOIN departments d ON d.id = r.department_id;

-- View all employees
SELECT e.id, e.first_name AS "First Name", e.last_name AS "Last Name", IFNULL(r.title, "No Data") AS "Job Title", IFNULL(d.department_name, "No Data") AS "Department", IFNULL(r.salary, 'No Data') AS "Salary", CONCAT(m.first_name," ",m.last_name) AS "Manager"
FROM employees e
LEFT JOIN roles r ON r.id = e.role_id 
LEFT JOIN departments d ON d.id = r.department_id
LEFT JOIN employees m ON m.id = e.manager_id
ORDER BY e.id;


SELECT e.id, e.first_name AS 'First Name', e.last_name AS 'Last Name', r.title, d.department_name AS 'Department', r.salary AS 'Salary' 
FROM employees e
INNER JOIN roles r ON r.id = e.role_id 
INNER JOIN departments d ON d.id = r.department_id;


-- Empoyees by department query
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", r.title, d.department_name AS "Department" 
FROM employees e
INNER JOIN roles r ON r.id = e.role_id 
INNER JOIN departments d ON d.id = r.department_id 
WHERE department_name = 'Management';

SELECT CONCAT(e.first_name," " ,e.last_name) AS full_name, r.title, e.manager_id FROM employees e
INNER JOIN roles r ON r.id = e.role_id WHERE e.manager_id = 1; 




DELETE FROM employees where id = 11;

SELECT e.id, e.first_name AS "First Name", e.last_name AS "Last Name", r.title, d.department_name AS "Department", r.salary 
FROM employees e 
INNER JOIN roles r ON r.id = e.role_id INNER JOIN departments d ON d.id = r.department_id 
WHERE department_name = 'Sales';
            
-- ON DELETE CASCADE

-- Add Employee 
INSERT INTO employees(first_name, last_name, role_id, manager_id) 
VALUES('Jerry', 'Seinfield', (SELECT id FROM roles WHERE title = 'Software Developer' ), 
(SELECT id FROM (SELECT id FROM employees WHERE CONCAT(first_name," ",last_name) = "Drew Barrymore" )AS tmptable));
           
SELECT Errors;

-- GIVEN a command-line application that accepts user input
-- WHEN I start the application
-- THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role


-- WHEN I choose to view all employees
-- THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to