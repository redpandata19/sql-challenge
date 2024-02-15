-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE departments (
    department_id VARCHAR(4)   NOT NULL,
    department_name VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        department_id
     )
);

CREATE TABLE titles (
    title_id VARCHAR(5)   NOT NULL,
    title VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE employees (
    employee_id INT   NOT NULL,
    employee_title_id VARCHAR(5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        employee_id
     )
);

CREATE TABLE department_managers (
    department_id VARCHAR(4)   NOT NULL,
    manager_employee_id INT   NOT NULL,
    CONSTRAINT pk_department_managers PRIMARY KEY (
        department_id,manager_employee_id
     )
);

CREATE TABLE department_employees (
    employee_id INT   NOT NULL,
    department_id VARCHAR(4)   NOT NULL,
    CONSTRAINT pk_department_employees PRIMARY KEY (
        employee_id,department_id
     )
);

CREATE TABLE salaries (
    employee_id INT   NOT NULL,
    salary DECIMAL   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        employee_id
     )
);

ALTER TABLE employees ADD CONSTRAINT fk_employees_employee_title_id FOREIGN KEY(employee_title_id)
REFERENCES titles (title_id);

ALTER TABLE department_managers ADD CONSTRAINT fk_department_managers_department_id FOREIGN KEY(department_id)
REFERENCES departments (department_id);

ALTER TABLE department_managers ADD CONSTRAINT fk_department_managers_manager_employee_id FOREIGN KEY(manager_employee_id)
REFERENCES employees (employee_id);

ALTER TABLE department_employees ADD CONSTRAINT fk_department_employees_employee_id FOREIGN KEY(employee_id)
REFERENCES employees (employee_id);

ALTER TABLE department_employees ADD CONSTRAINT fk_department_employees_department_id FOREIGN KEY(department_id)
REFERENCES departments (department_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_employee_id FOREIGN KEY(employee_id)
REFERENCES employees (employee_id);

