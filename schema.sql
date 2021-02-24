DROP DATABASE IF EXISTS employee_tracker_db;

CREATE DATABASE employee_tracker_db;

USE employee_tracker_db;

CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  dept_name VARCHAR(30),
  primary key(id),
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30),
  salary DECIMAL, 
  department_id INT,
  primary key(id),
  foreign key(department_id) REFERENCES departments(id)
);

CREATE TABLE employees (
   id INT NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(30), 
   last_name VARCHAR(30), 
   role_id INT, 
   manager_id INT,
   primary key(id),
   foreign key(role_id) REFERENCES roles (id),
   foreign key(manager_id) REFERENCES employees (id),
);

SELECT * FROM employees;
SELECT * FROM roles;
SELECT * FROM departments;