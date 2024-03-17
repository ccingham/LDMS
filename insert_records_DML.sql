-----------------------------------------------------------------------------
-- 2. Populate the Departments and Employees data structures using the data
-- specified in the Appendix
-----------------------------------------------------------------------------

INSERT ALL
    INTO DEPARTMENTS (department_id, department_name, department_location) VALUES (1,'Management','London')
    INTO DEPARTMENTS (department_id, department_name, department_location) VALUES (2,'Enginering','Cardiff')
    INTO DEPARTMENTS (department_id, department_name, department_location) VALUES (3,'Research '|| chr(38) ||' Development','Edinburgh')
    INTO DEPARTMENTS (department_id, department_name, department_location) VALUES (4,'Sales','Belfast')
SELECT * FROM DUAL;
/

INSERT ALL
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90001,'John Smith','CEO',NULL,TO_DATE('01-JAN-1995'),100000,1)
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90002,'Jimmy Willis','Manager',90001,TO_DATE('23-SEP-2003'),52500,1)
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90003,'Roxy Jones','Salesperson',90002,TO_DATE('11-FEB-2017'),35000,4)
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90004,'Selwyn Field','Salesperson',90003,TO_DATE('01-JAN-1995'),32000,4)
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90005,'David Hallett','Engineer',90006,TO_DATE('17-APR-2018'),40000,2)
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90006,'Sarah Phelps','Manager',90001,TO_DATE('21-MAR-2015'),45000,2) 
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90007,'Louise Harper','Engineer',90006,TO_DATE('01-JAN-2013'),47000,2)
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90008,'Tina Hart','Engineer',90009,TO_DATE('28-JUL-2014'),50000,3) 
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90009,'Gus Jones','Manager',90001,TO_DATE('15-MAY-2018'),50000,3)
    INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (90010,'Mildred Hall','Secretary',90001,TO_DATE('12-OCT-1996'),35000,1)
SELECT * FROM DUAL;
/
