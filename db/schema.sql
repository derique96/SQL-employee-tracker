Create database human_resources_db;

Use database human_resources_db;



Create table departments (
   id INT NOT NULL Auto_INCREMENT PRIMARY KEY,
   NAME VARCHAR(30), 
);


Create table roles (
    id INT NOT NULL Auto_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT FOREIGN KEY (departments) REFERENCES departments(id) ON DELETE SET NULL,
);

Create table employees (
    id INT NOT NULL Auto_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT NOT NULL FOREIGN KEY (roles) REFERENCES (role_id) ON DELETE SET NULL, 
    manager_id INT NOT NULL FOREIGN KEY (employees) REFERENCES employees_(id) ON DELETE SET NULL
)