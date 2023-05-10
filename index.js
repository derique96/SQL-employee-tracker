const inquirer = require('inquirer');
const fs = require('fs');
const { default: Choice } = require('inquirer/lib/objects/choice');




inquirer
    .prompt ([
        {
            type: "choice",
            name : "intro",
            message: "Welcome! Please choose an action",
            choices: ["View All Departments", "View All Roles", "View All Employees", "Add a Deparment",  "Add a Role", "Add an Employee", "Update Employee Role"]
        }
    ])