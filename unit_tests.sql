-- unit tests
----------------------
-- create new employee record

DECLARE

v_error_message VARCHAR2(100) := NULL;
v_total_salary NUMBER := NULL;

BEGIN

-- test a valid new employee record is created
create_employee ('Chris Ingham','Engineer', 90006, to_date('01-jan-2024'), 50000, 2, v_error_message);

IF v_error_message IS NULL
THEN
	COMMIT;
END IF;

v_error_message := NULL;

-- atempt to create a new employee record with an invalid manager id
DBMS_OUTPUT.PUT_LINE('create new employee with invalid manager id');
create_employee ('Tasha Armour','Engineer', 12345, to_date('01-jan-2024'), 50000, 2, v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

IF v_error_message IS NULL
THEN
	COMMIT;
END IF;

-- change salary
v_error_message := NULL;

-- invlid employee id
DBMS_OUTPUT.PUT_LINE('change salary with invalid employee id');
change_salary(90012,-10,v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

IF v_error_message IS NULL
THEN
	COMMIT;
END IF;

v_error_message := NULL;

-- increase salary
change_salary(90011,20,v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

IF v_error_message IS NULL
THEN
	COMMIT;
END IF;

v_error_message := NULL;

-- decrease salary
change_salary(90009,-10,v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

IF v_error_message IS NULL
THEN
	COMMIT;
END IF;

v_error_message := NULL;
DBMS_OUTPUT.PUT_LINE('transfer employee to new dept');
change_department(90011,3,v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

v_error_message := NULL;
DBMS_OUTPUT.PUT_LINE('invlaid employee id');
change_department(90012,3,v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

v_error_message := NULL;
DBMS_OUTPUT.PUT_LINE('invlaid dept id');
change_department(90011,5,v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

v_error_message := NULL;
DBMS_OUTPUT.PUT_LINE('employee already in that dept');
change_department(90011,3,v_error_message);
DBMS_OUTPUT.PUT_LINE(v_error_message);

-- get salary for employee
v_salary := return_salary(90011);
DBMS_OUTPUT.PUT_LINE('salary = '||v_salary);


-- list employees in each department
DBMS_OUTPUT.PUT_LINE('dept 1');
employee_report(1);
DBMS_OUTPUT.PUT_LINE('dept 2');
employee_report(2);
DBMS_OUTPUT.PUT_LINE('dept 3');
employee_report(3);
DBMS_OUTPUT.PUT_LINE('dept 4');
employee_report(4);

-- nothing displayed if an invalid department id is used
DBMS_OUTPUT.PUT_LINE('dept 5');
employee_report(5);


-- list total salary for each department
DBMS_OUTPUT.PUT_LINE('total sal for each dept');

DBMS_OUTPUT.PUT_LINE('dept 1');
v_total_salary := salary_report(1);
DBMS_OUTPUT.PUT_LINE(v_total_salary);
v_total_salary := NULL;
DBMS_OUTPUT.PUT_LINE('dept 2');
v_total_salary := salary_report(2);
DBMS_OUTPUT.PUT_LINE(v_total_salary);
v_total_salary := NULL;
DBMS_OUTPUT.PUT_LINE('dept 3');
v_total_salary := salary_report(3);
DBMS_OUTPUT.PUT_LINE(v_total_salary);
v_total_salary := NULL;
DBMS_OUTPUT.PUT_LINE('dept 4');
v_total_salary := salary_report(4);
DBMS_OUTPUT.PUT_LINE(v_total_salary);
v_total_salary := NULL;
DBMS_OUTPUT.PUT_LINE('dept 5');
v_total_salary := salary_report(5);
IF v_total_salary IS NULL
THEN
   DBMS_OUTPUT.PUT_LINE('NULL returned');
END IF;



END;
/
