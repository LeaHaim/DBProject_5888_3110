CREATE OR REPLACE PROCEDURE update_team_salary_equipment(p_team_id NUMBER)
IS
  -- Explicit cursor declaration
  CURSOR emp_cursor IS
    SELECT e.id_employee, COUNT(eq.id_equipment) AS equipment_count
    FROM Employee e
    LEFT JOIN Equipment eq ON e.id_employee = eq.id_employee
    WHERE e.id_team = p_team_id
    GROUP BY e.id_employee;

  -- Ref cursor declaration for returning results
  TYPE ref_cursor_type IS REF CURSOR;
  ref_cursor ref_cursor_type;

  -- Record type for employee data
  TYPE emp_rec_type IS RECORD (
    id_employee Employee.id_employee%TYPE,
    equipment_count NUMBER
  );
  emp_rec emp_rec_type;

  -- Record type for ref cursor data
  TYPE ref_emp_rec_type IS RECORD (
    id_employee Employee.id_employee%TYPE,
    name_emp Employee.name_emp%TYPE,
    salary Employee.salary%TYPE
  );
  ref_emp_rec ref_emp_rec_type;

  -- Variables for dynamic salary adjustment
  salary_increment NUMBER;

BEGIN
  -- Open the explicit cursor
  OPEN emp_cursor;

  -- Fetch each employee record
  LOOP
    FETCH emp_cursor INTO emp_rec;
    EXIT WHEN emp_cursor%NOTFOUND;

    -- Calculate salary increment based on equipment count
    IF emp_rec.equipment_count > 5 THEN
      salary_increment := 1000; -- Increment for more than 20 equipment
    ELSIF emp_rec.equipment_count > 2 THEN
      salary_increment := 500; -- Increment for 11-20 equipment
    ELSE
      salary_increment := 100; -- Increment for 10 or fewer equipment
    END IF;

    -- Update employee salary based on equipment count
    UPDATE Employee
    SET salary = salary + salary_increment
    WHERE id_employee = emp_rec.id_employee;

    -- Conditional action based on equipment count
    IF emp_rec.equipment_count > 10 THEN
      DBMS_OUTPUT.PUT_LINE('Employee ID ' || emp_rec.id_employee || ' has borrowed more than 10 pieces of equipment.');
    END IF;
  END LOOP;

  -- Close the explicit cursor
  CLOSE emp_cursor;

  -- Commit the transaction
  COMMIT;

  -- Return a ref cursor with updated employee details
  OPEN ref_cursor FOR
    SELECT e.id_employee, e.name_emp, e.salary
    FROM Employee e
    WHERE e.id_team = p_team_id;

  -- Additional processing with the ref cursor if needed
  LOOP
    FETCH ref_cursor INTO ref_emp_rec;
    EXIT WHEN ref_cursor%NOTFOUND;
  END LOOP;
  CLOSE ref_cursor;

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
    RAISE;
END;
/
