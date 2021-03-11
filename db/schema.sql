DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employees;

CREATE TABLE departments(
    id INT PRIMARY KEY
    name VARCHAR(30)
);

CREATE TABLE roles(
    id INT PRIMARY KEY
    title VARCHAR(30)
    salary DECIMAL
    department_id INT
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE employee(
    id INT PRIMARY KEY
    first_name VARCHAR(30)
    last_name VARCHAR(30)
    role_id INT
    manager_id INT
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id)
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(name) ON DELETE SET NULL
);
