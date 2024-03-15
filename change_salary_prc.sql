-----------------------------
-- 4. Create an appropriate executable database object to allow the Salary for an
-- Employee to be increased or decreased by a percentage
-----------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE change_salary (p_employee_id IN NUMBER,
                                           p_change      IN NUMBER,
                                           p_error_message OUT VARCHAR2  
                                          )
IS

not_valid_employee   EXCEPTION;

v_existing_salary NUMBER;
v_one_percent     NUMBER;
v_change          NUMBER;
v_new_salary      NUMBER;

BEGIN

   SELECT salary 
   INTO v_existing_salary
   FROM EMPLOYEES
   WHERE EMPLOYEE_ID = p_employee_id;

   v_one_percent := v_existing_salary / 100;
   v_change := v_one_percent * p_change;
   v_new_salary := v_existing_salary + v_change;

   UPDATE EMPLOYEES
   SET salary = v_new_salary
   WHERE EMPLOYEE_ID = p_employee_id;

EXCEPTION

    WHEN not_valid_employee
    THEN p_error_message := 'Not a valid employee id';
    WHEN OTHERS THEN p_error_message := SUBSTR(SQLERRM,1,100);
    
END change_salary;
/
