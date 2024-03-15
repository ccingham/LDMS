------------------------------------------------------------------------------
-- 6. Create an appropriate executable database object to return the Salary for an
--    Employee.
--------------------------------------------------
CREATE OR REPLACE FUNCTION return_salary (p_employee_id    IN NUMBER )
RETURN NUMBER
IS

v_salary NUMBER;

BEGIN

   BEGIN
    SELECT SALARY
    INTO v_salary 
    FROM EMPLOYEES
    WHERE employee_id = p_employee_id;
   EXCEPTION
   WHEN NO_DATA_FOUND THEN v_salary := NULL;
   END;

   RETURN v_salary;

END return_salary;
/
