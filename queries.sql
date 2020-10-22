SELECT employees.employee_number, employees.name_first, employees.name_last, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.employee_number=salaries.employee_number;

SELECT name_first, name_last, hire_date 
FROM employees
WHERE hire_date LIKE '%1986';

SELECT managers.department_number, managers.employee_number, department_name.department_name, employees.name_last, employees.name_first
FROM ((managers
INNER JOIN department_name ON managers.department_number=department_name.department_number)
INNER JOIN employees ON managers.employee_number=employees.employee_number); 

SELECT employees.employee_number, employees.name_last, employees.name_first, department_name.department_name
FROM employees
INNER JOIN department_employee ON employees.employee_number=department_employee.employee_number
INNER JOIN department_name ON department_employee.department_number=department_name.department_number;

SELECT name_last, name_first, sex
FROM employees
WHERE name_first='Hercules' AND name_last LIKE 'B%';

SELECT employees.employee_number, employees.name_last, employees.name_first, department_name.department_name
FROM employees
INNER JOIN department_employee ON employees.employee_number=department_employee.employee_number
INNER JOIN department_name ON department_employee.department_number=department_name.department_number
WHERE department_name.department_name='Sales'

SELECT employees.employee_number, employees.name_last, employees.name_first, department_name.department_name
FROM employees
INNER JOIN department_employee ON employees.employee_number=department_employee.employee_number
INNER JOIN department_name ON department_employee.department_number=department_name.department_number
WHERE department_name.department_name='Sales' OR department_name.department_name='Development'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.