INSERT INTO departments (department_name)
VALUES
('Management'),
('Sales'),
('Tech'),
('Human Resources'),
('Accounting');

INSERT INTO roles (title, salary, department_id)
VALUES
('Manager', 120000, 1),
('Sales Representive', 60000, 2),
('Software Developer', 87000, 3),
('HR Representative', 80000, 4),
('Accountant', 72000, 5);

INSERT INTO employees (first_name, last_name, role_id)
VALUES
('Juan', 'Nunez', 1),
('John', 'Doe', 2),
('Jim', 'Carey', 5),
('Ron', 'Burgundy', 3),
('Adam', 'Sandler', 4),
('Melissa', 'McCarthy', 3),
('Sandra', 'Bullock', 2),
('Gene', 'Wilder', 4),
('Owen', 'Wilson', 5),
('Seth', 'McFarlane', 1);