---------------------------------------------------------
-- 5. Create an appropriate executable database object to allow the transfer of an
-- Employee to a different Department
--------------
CREATE OR REPLACE PROCEDURE change_department (p_employee_id    IN NUMBER,
                                               p_new_department IN NUMBER,
                                               p_error_message  OUT VARCHAR2  
                                          )
IS

not_valid_department EXCEPTION;
not_valid_employee   EXCEPTION;
already_in_dept      EXCEPTION;

v_valid_employee_id NUMBER;
v_valid_dept_id NUMBER;
v_old_dept_id NUMBER;

BEGIN

    SELECT COUNT(1)
    INTO v_valid_employee_id
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = p_employee_id;

    IF v_valid_employee_id != 1
    THEN
        RAISE not_valid_employee;
    END IF;

   SELECT COUNT(1)
   INTO v_valid_dept_id
   FROM DEPARTMENTS
   WHERE DEPARTMENT_ID = p_new_department;

   IF v_valid_dept_id != 1
   THEN
      RAISE not_valid_department;
   END IF;

   SELECT COUNT(1)
   INTO v_valid_employee_id
   FROM EMPLOYEES
   WHERE EMPLOYEE_ID = p_employee_id;

   IF v_valid_employee_id != 1
   THEN
      RAISE not_valid_employee;
   END IF;

   SELECT DEPARTMENT_ID 
   INTO v_old_dept_id
   FROM EMPLOYEES
   WHERE EMPLOYEE_ID = p_employee_id;

   IF v_old_dept_id = p_new_department
   THEN 
      RAISE already_in_dept;
   END IF;

   UPDATE EMPLOYEES
   SET DEPARTMENT_ID = p_new_department
   WHERE EMPLOYEE_ID = p_employee_id;

EXCEPTION
   WHEN not_valid_department
   THEN p_error_message := 'Not a valid department id';

   WHEN not_valid_employee
   THEN p_error_message := 'Not a valid employee id';

   WHEN already_in_dept
   THEN p_error_message := 'This employee is already in department '||p_new_department;

   WHEN OTHERS 
   THEN p_error_message := SUBSTR(SQLERRM,1,100);
   
END change_department;
/
