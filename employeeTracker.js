const mysql = require('mysql')
const inquirer = require('inquirer')

const connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: process.env.DB_password,
  database: 'employee_tracker_db',
})

const promptUser = () => { 
    inquirer.prompt([
        {
            type: 'list',
            message: 'What would you like to do?',
            choices: [
                'View All Employees', 
                'View All Employees By Department', 
                'View All Employees By Manager', 
                'Add Employee', 
                'Remove Employee', 
                'Update Employee Role', 
                'Add New Department', 
                'Add New Role', 
                'Exit'
            ],
            name: 'prompt'
        }
    ])
    .then (function (answer){
        switch(answer.prompt){
            case 'View All Employees':
                viewEmployees()
                break;
            case 'View All Employees By Department':
                viewDepartment()
                break;
            case 'View All Employees By Manager':
                viewManger()
                break;
            case 'Add Employee':
                addEmployee()
                break;
            case 'Remove Employee':
                removeEmployee()
                break;
            case 'Update Employee Role':
                updateEmployeeRole()
                break;
            case 'Add New Department':
                addNewDepartment()
                break;
            case 'Add New Role':
                addNewRole()
                break;
            case 'Exit':
                connection.end()
                break;
        }
    })
}
    

connection.connect((err) => {
    if (err) throw err
    promptUser()
})