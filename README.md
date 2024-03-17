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
   User should execute a commit after the scrip has run succesfully (or rollback if not. See DBMS_OUTPUT from script.
   
3. The following scripts create proedures and functions. They can be run in any order.
   Comments in the scripts describe the parameters and results.
   Procedures include and OUT parameter that will be null if the procedure completes succesuflly, and a descriptive error message if not.

create_employee_prc.sql
change_salary_prc.sql
change_department_prc.sql
return_salary_fnc.sql
employee_report_prc.sql
salary_report_fnc.sql

4. The following unit test scripts make calls to the above, demonstrating that they function as intended.
   Comments in the scripts list the acceptance criteria I have tested against.
   
   create_employee_test.sql
   change_salary_test.sql
   change_department_test.sql
   return_salary_test.sql
   emp_by_dept_test.sql
   salary_total_dept_test.sql