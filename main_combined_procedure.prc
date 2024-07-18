CREATE OR REPLACE PROCEDURE main_combined_procedure IS
  v_team_id Team.id_team%TYPE;
  v_equipment_count NUMBER;
BEGIN
  -- Get the team with the most borrowed equipment
  v_team_id := get_team_most_borrowed;

  IF v_team_id IS NOT NULL THEN
    -- Display current salary information before the update
    DBMS_OUTPUT.PUT_LINE('Current Salary Information:');
    FOR emp_rec IN (
      SELECT e.id_employee, e.name_emp, e.salary
      FROM Employee e
      WHERE e.id_team = v_team_id
    ) LOOP
      DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_rec.id_employee || 
                           ', Name: ' || emp_rec.name_emp || 
                           ', Salary: ' || emp_rec.salary);
    END LOOP;

    -- Update salary for employees in the team based on equipment count
    update_team_salary_equipment(v_team_id);

    -- Display results after update
    SELECT COUNT(*) INTO v_equipment_count
    FROM Equipment e
    JOIN Employee emp ON e.id_employee = emp.id_employee
    WHERE emp.id_team = v_team_id;

    DBMS_OUTPUT.PUT_LINE('Team ID with most borrowed equipment: ' || v_team_id);
    DBMS_OUTPUT.PUT_LINE('Number of borrowed equipment: ' || v_equipment_count);

    -- Display updated salary information
    DBMS_OUTPUT.PUT_LINE('Updated Salary Information:');
    FOR emp_rec IN (
      SELECT e.id_employee, e.name_emp, e.salary
      FROM Employee e
      WHERE e.id_team = v_team_id
    ) LOOP
      DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_rec.id_employee || 
                           ', Name: ' || emp_rec.name_emp || 
                           ', Salary: ' || emp_rec.salary);
    END LOOP;

  ELSE
    DBMS_OUTPUT.PUT_LINE('No team found with borrowed equipment.');
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
    RAISE;
END;
/
