INSERT INTO departments (department_name)
VALUES
('Management'),
('Sales'),
('Tech'),
('Human Resources'),
('Accounting'),
('Circus');

INSERT INTO roles (title, salary, department_id)
VALUES
('Manager', 120000, 1),
('Sales Representive', 60000, 2),
('Software Developer', 87000, 3),
('HR Representative', 80000, 4),
('Accountant', 72000, 5),
('Clown', 20000, 4);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
('Juan', 'Nunez', 1, NULL),
('John', 'Doe', 1, NULL),
('Jim', 'Carey', 5, 2),
('Ron', 'Burgundy', 3, 1),
('Adam', 'Sandler', 4, 2),
('Melissa', 'McCarthy', 3, 1),
('Sandra', 'Bullock', 2, 1),
('Gene', 'Wilder', 4, 2),
('Owen', 'Wilson', 5, 2),
('Seth', 'McFarlane', 3, 1);