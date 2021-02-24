INSERT INTO departments (dept_name)
VALUES 
("Marketing"), 
("Production"), 
("Accounting");

INSERT INTO roles (title, salary, department_id)
VALUES 
("Marketing Manager", 98000, 1), 
("Production Manager", 75000, 3), 
("Account Manager", 63000, 2),

INSERT INTO employees (first_name, last_name, role_id)
VALUES 
("Greg", "Smith", 1), 
("Jane", "Jones", 2), 
("Winnie", "Young", 3);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES 
("Barbra", "Streisand", 4, 1);
