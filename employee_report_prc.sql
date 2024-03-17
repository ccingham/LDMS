-------------------------------------------------------------------------
-- 7. Write a report to show all Employees for a Department
-------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE employee_report (p_department_id IN NUMBER)                                           
IS

CURSOR emp_cur IS
SELECT EMPLOYEE_NAME 
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = p_department_id;

BEGIN
    FOR emp_rec in emp_cur
    LOOP
        DBMS_OUTPUT.PUT_LINE(emp_rec.EMPLOYEE_NAME);
    END LOOP;

END employee_report;
/
