/*

use uppercase for keywords.

use lowercase for variable.

*/
USE exercise_hr;

SHOW tables;

SELECT first_name , last_name , hire_date 
FROM employees;

SELECT *
FROM employees;


SELECT * 
FROM employees
ORDER BY first_name DESC;

SELECT *
FROM employees
ORDER BY FIRST_NAME ASC,salary ASC ;

SELECT first_name AS "First Name", last_name AS "Last Name" 
FROM employees;

SELECT first_name AS "First Name", last_name AS "Last Name" ,salary AS "Salary" , salary * 15/100 AS "PF" 
FROM employees;

SELECT department_id 
FROM employees;

SELECT * 
FROM employees
WHERE last_name REGEXP 'B[a-z]*[ru]';

SELECT DISTINCT department_id
FROM employees;

ALTER TABLE employees
ADD COLUMN pf INTEGER;

UPDATE employees
SET pf = salary * 15/100
WHERE employee_id = 100;

SELECT * 
FROM employees;

SELECT first_name,last_name,hire_date
FROM employees;

SELECT first_name , last_name ,salary
FROM employees
WHERE  salary < '10000' OR salary > '15000';

SELECT first_name , last_name,department_id
FROM employees 
WHERE department_id = '30' OR department_id = '100' 
ORDER BY first_name ASC , last_name ;


SELECT first_name , last_name,salary ,department_id
FROM employees
WHERE (department_id = '30' OR department_id = '100') AND (salary < '10000' OR salary > '15000');

SELECT *
FROM employees
WHERE last_name ='KING' OR last_name='SCOTT' OR last_name='BLAKE' OR last_name = 'FORD';

-- 1;
SELECT first_name
FROM employees
Where first_name LIKE '%b%' AND first_name LIKE '%c%';

-- 2;

SELECT last_name
FROM employees
Where last_name LIKE '______' ;

SELECT last_name
FROM employees
Where last_name LIKE '______' ;

-- 3;

SELECT last_name
FROM employees
Where last_name LIKE '__e%' ;

-- 4;

SELECT DISTINCT job_id
FROM employees;

SELECT EMPLOYEE_ID, first_name , DEPARTMENT_ID
FROM employees
ORDER BY DEPARTMENT_ID , first_name;


SELECT EMPLOYEE_ID, first_name , DEPARTMENT_ID
FROM employees
ORDER BY DEPARTMENT_ID , first_name DESC;


SELECT EMPLOYEE_ID, first_name , DEPARTMENT_ID
FROM employees
ORDER BY DEPARTMENT_ID DESC ;

SELECT EMPLOYEE_ID, first_name , DEPARTMENT_ID
FROM employees
ORDER BY first_name ,DEPARTMENT_ID DESC ;

-- 24/02/2023 
SELECT SUM(salary) AS Total_salary
FROM employees
WHERE salary IS NOT NULL;

SELECT MIN(salary) AS minimum_salary , MAX(salary) AS maximum_salary
FROM employees
WHERE salary IS NOT NULL;

SELECT COUNT(salary) as working
FROM employees;

SELECT COUNT(DISTINCT job_id) as Number_of_jobs
FROM employees;


SELECT CONCAT(first_name ," ", last_name) AS Name
FROM employees;

SELECT SUBSTRING(first_name,1,3) 
FROM employees;

SELECT LENGTH(CONCAT(first_name ," ", last_name)) AS Name_length
FROM employees;

-- we joining the table using INNER JOIN

SELECT * 
FROM employees INNER JOIN departments
ON employees.department_id = departments.department_id; 

SELECT employee_id,first_name,last_name,e.department_id,department_name 
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id; 

SELECT employee_id,first_name,last_name,e.department_id,department_name 
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE department_name = 'it'; 




SELECT 1,2;

SELECT 1+2;

SELECT  100 - 50 / 2;

SELECT 100 -50 / 2 AS value;

SELECT 100 -50 / 2 AS 'answer value';


SELECT SUM(salary) as Total_salary
FROM  employees;

SELECT MIN(salary) as Min_salary
FROM  employees;

SELECT MAX(salary) as Max_salary
FROM  employees;

SELECT SUM(salary) / COUNT(salary) as Average
FROM employees;





SELECT 171*214+625;


-- EXPLAIN 
-- SELECT * 
-- FROM 














 


