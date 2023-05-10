DROP DATABASE IF EXISTS human_resources_db;
Create database human_resources_db;

Use human_resources_db;



Create table department (
   id INT NOT NULL Auto_INCREMENT PRIMARY KEY,
   NAME VARCHAR(30) 
);


Create table roles (
    id INT NOT NULL Auto_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department INT, FOREIGN KEY (department) 
    REFERENCES department(id)
);

Create table employee (
    id INT NOT NULL Auto_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role INT NOT NULL, FOREIGN KEY (role) REFERENCES roles(id), 
    manager INT NOT NULL, FOREIGN KEY (manager) 
    REFERENCES employee(id)
);