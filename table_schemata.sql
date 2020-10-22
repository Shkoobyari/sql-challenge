CREATE TABLE employees (
	employee_number INTEGER,
	title_id VARCHAR,
	dob VARCHAR,
	name_first VARCHAR,
	name_last VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR,
	PRIMARY KEY (employee_number)
);

SELECT * FROM employees;



CREATE TABLE department_employee(
	employee_number INTEGER,
	department_number VARCHAR,
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

SELECT * FROM department_employee;

ALTER TABLE department_employee ADD COLUMN primary_id SERIAL PRIMARY KEY;



CREATE TABLE managers(
	department_number VARCHAR,
	employee_number INTEGER,
	FOREIGN KEY (department_number) REFERENCES department_name(department_number),
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

SELECT * FROM managers;

ALTER TABLE managers ADD COLUMN manager_id SERIAL PRIMARY KEY;



CREATE TABLE department_name(
	department_number VARCHAR PRIMARY KEY,
	department_name VARCHAR
);

SELECT * FROM department_name;



CREATE TABLE salaries(
	employee_number VARCHAR,
	salary VARCHAR,
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

SELECT * FROM salaries;

ALTER TABLE salaries ADD COLUMN salary_id SERIAL PRIMARY KEY;

