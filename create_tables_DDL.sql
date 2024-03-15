----------------------------------------------------------------------
-- 1. Create the necessary data structures to contain the data specified in the
--    Appendix ensuring that data integrity is enforced
--
-- 15 March 2024
-- Chris Ingham
-- File: create_tables_DDL.sql
----------------------------------------------------------------------

CREATE TABLE DEPARTMENTS ( department_id       NUMBER(5) NOT NULL,
                           department_name     VARCHAR2(50) NOT NULL,
                           department_location VARCHAR2(50) NOT NULL,
                           CONSTRAINT departments_pk PRIMARY KEY (department_id)
                         );
/

CREATE TABLE EMPLOYEES ( employee_id   NUMBER(10) NOT NULL,
                         employee_name VARCHAR2(50) NOT NULL,
                         job_title     VARCHAR2(50) NOT NULL,
                         manager_id    NUMBER(10),
                         date_hired    DATE NOT NULL,
                         salary        NUMBER(10) NOT NULL,
                         department_id NUMBER(5) NOT NULL,
                         CONSTRAINT employee_pk PRIMARY KEY (employee_id),
                         CONSTRAINT department_fk FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL               
                        ); 
/
