----------------------------------------------------------------------
-- 8. Write a report to show the total of Employee Salary for a Department
------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION salary_report (p_department_id IN NUMBER) 
RETURN NUMBER                                          
IS

v_total_salary NUMBER;

BEGIN
    SELECT SUM(SALARY)
    INTO v_total_salary
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = p_department_id;

    RETURN v_total_salary;

END salary_report;
/
