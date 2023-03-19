USE exercise_hr;

select first_name,last_name,d.department_id, d.department_name
from employees as e inner join departments as d 
on e.DEPARTMENT_ID=d.DEPARTMENT_ID;


SELECT jobs.job_title, employees.FIRST_NAME, (employees.SALARY-jobs.MIN_salary) AS salary_difference
FROM employees
JOIN jobs on employees.JOB_ID= jobs.JOB_ID;


SELECT employee_id, job_title, end_date - start_date Days FROM job_history
NATURAL JOIN jobs
WHERE department_id=90;


SELECT department_name, AVG(salary) AS average_salary
FROM employees
JOIN departments ON employees.department_id = departments.department_id
GROUP BY department_name;

SELECT d.department_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name, l.city
FROM departments d
JOIN employees e ON d.manager_id = e.employee_id
JOIN locations l ON d.location_id = l.location_id;