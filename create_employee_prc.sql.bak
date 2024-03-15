------------------------------------------------------------------
-- 3. Create an appropriate executable database object to allow an Employee to be
--    created
---------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE create_employee (p_employee_name IN VARCHAR2,
                                             p_job_title IN VARCHAR2,
                                             p_manager_id IN NUMBER,
                                             p_date_hired IN DATE,
                                             p_salary IN NUMBER,
                                             p_department_id IN NUMBER,
                                             p_error_message OUT VARCHAR2      
                                            )
   

IS
    v_new_emp_no NUMBER;
    v_valid_manager_id NUMBER;

    bad_manager_id EXCEPTION;

BEGIN

    -- validate manager id
    IF p_manager_id IS NOT NULL
    THEN
       SELECT COUNT(1)
       INTO v_valid_manager_id
       FROM EMPLOYEES
       WHERE p_manager_id = employee_id;

       IF v_valid_manager_id != 1
       THEN        
         RAISE bad_manager_id;
       END IF;
    END IF;
   
   SELECT MAX(employee_id) + 1
   INTO v_new_emp_no
   FROM EMPLOYEES;

   INSERT INTO EMPLOYEES (employee_id, employee_name, job_title, manager_id, date_hired, salary, department_id) VALUES (v_new_emp_no,
                                                                                                                        p_employee_name,
                                                                                                                        p_job_title,
                                                                                                                        p_manager_id,
                                                                                                                        p_date_hired,
                                                                                                                        p_salary,
                                                                                                                        p_department_id
                                                                                                                        );


EXCEPTION
    WHEN bad_manager_id
    THEN
       p_error_message := p_manager_id||' is not an emplolyee';

    WHEN OTHERS THEN
        p_error_message := SUBSTR(SQLERRM,1,100);

END create_employee;