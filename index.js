const inquirer = require('inquirer');
const mysql = require('mysql2');






inquirer
    .prompt ([
        {
            type: "choice",
            name : "intro",
            message: "Welcome! Please choose an action",
            choices: ["View All Departments", "View All Roles", "View All Employees", "Add a Deparment",  "Add a Role", "Add an Employee", "Update Employee Role"]
        }
    ]);
;

const db = mysql.createconnection (
    {
       host: 'localhost',
       user: 'root',
       password: 'root',
       database: 'human_resources_db',
    },
    console.log(`Connected to the database human_resources_db`)
);
