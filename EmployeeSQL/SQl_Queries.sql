-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.employee_id, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON
employees.employee_id=salaries.employee_id;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >='1986-01-01'AND hire_date < '1987-01-01';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 
	department_managers.manager_employee_id, 
	department_managers.department_id, 
	departments.department_name, 
	employees.employee_id, 
	employees.last_name, 
	employees.first_name
FROM department_managers
JOIN employees
ON department_managers.manager_employee_id = employees.employee_id
JOIN departments
ON department_managers.department_id = departments.department_id

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT 
	department_employees.department_id, 
	department_employees.employee_id, 
	employees.last_name,
	employees.first_name,
	departments.department_name
FROM department_employees
JOIN employees
ON department_employees.employee_id = employees.employee_id
JOIN departments
ON department_employees.department_id = departments.department_id

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'


-- 6. List each employee in the Sales department, including their employee number, last name, and first name.


-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
