1. Create the necessary data structures to contain the data specified in the Appendix ensuring that data integrity is enforced
2. Populate the Departments and Employees data structures using the data specified in the Appendix
3. Create an appropriate executable database object to allow an Employee to be created
4. Create an appropriate executable database object to allow the Salary for an Employee to be increased or decreased by a percentage
5. Create an appropriate executable database object to allow the transfer of an Employee to a different Department
6. Create an appropriate executable database object to return the Salary for an Employee.
7. Write a report to show all Employees for a Department
8. Write a report to show the total of Employee Salary for a Department



INSTRUCTIONS.

As a user with permisions to create tables, procudures and functions, and read, write and execute permsions. Run the scripts in the following order.

1. create_tables_DDL.sql. This creates two tables as specified in the requirement with primary key and foreign key constraints.
2. insert_records_DML.sql. This populates the tables as specified in the requirement. Note this script does not include a commit. 
   User should execute a commit after the script has run succesfully 
   
3. The following scripts create proedures and functions. They can be run in any order.
   Comments in the scripts describe the parameters and results.
   Procedures include and OUT parameter that will be null if the procedure completes succesuflly, and a descriptive error message if not.

create_employee_prc.sql
change_salary_prc.sql
change_department_prc.sql
return_salary_fnc.sql
employee_report_prc.sql
salary_report_fnc.sql

4. the file unt_tests.sql tests that the above function as intended. this is a script that will:
   create a new employee record. return an error message if invlaid manager id is used.
   change salary. return an error message if invalid employee id is used.
   transfer an employee to a diferent department. returns an error is invalid employee or dept id is used, or if the employee is already in the dept.
   returns the salary of an employee. returns null if invalid employee id. 
   returns the salary of an employee. returns null if invalid employee id.
   lists employees by department. nothing listed if invalid dept id.
   returns the total salary for a department.
   
   