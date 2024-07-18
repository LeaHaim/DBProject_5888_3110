CREATE OR REPLACE PROCEDURE manage_equipment_assignment(
  p_call_id IN Call.id_call%TYPE
)
IS
  TYPE equipment_record IS RECORD (
    id_equipment Equipment.id_equipment%TYPE,
    name_e Equipment.name_e%TYPE
  );
  TYPE equipment_table IS TABLE OF equipment_record;
  v_equipment equipment_table;
  v_team_id Team.id_team%TYPE;
  v_employee_id Employee.id_employee%TYPE;
  
  equipment_already_assigned EXCEPTION;
  PRAGMA EXCEPTION_INIT(equipment_already_assigned, -20003);
  
BEGIN
  -- Get the team assigned to the call
  SELECT id_team INTO v_team_id
  FROM Call
  WHERE id_call = p_call_id;
  
  -- Get available equipment
  SELECT id_equipment, name_e
  BULK COLLECT INTO v_equipment
  FROM Equipment
  WHERE status_e = 0
  AND ROWNUM <= 5; -- Limit to 5 pieces of equipment
  
  -- Assign equipment to employees in the team
  FOR i IN 1..v_equipment.COUNT LOOP
    BEGIN
      -- Get an available employee from the team
      SELECT id_employee INTO v_employee_id
      FROM Employee
      WHERE id_team = v_team_id
      AND id_employee NOT IN (
        SELECT id_employee
        FROM Equipment
        WHERE status_e = 1
      )
      AND ROWNUM = 1;
      
      -- Assign equipment to the employee
      UPDATE Equipment
      SET id_employee = v_employee_id,
          status_e = 1,
          date_borrow = SYSDATE
      WHERE id_equipment = v_equipment(i).id_equipment;
      
      -- Log the assignment (now just printing to output instead of inserting to a table)
      DBMS_OUTPUT.PUT_LINE('Assigned equipment ' || v_equipment(i).id_equipment || 
                           ' to employee ' || v_employee_id  
                           ||' for call ' || p_call_id);
      
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No available employee for equipment: ' || v_equipment(i).name_e);
      WHEN equipment_already_assigned THEN
        DBMS_OUTPUT.PUT_LINE('Equipment already assigned: ' || v_equipment(i).name_e);
    END;
  END LOOP;
  
  COMMIT;
  
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE_APPLICATION_ERROR(-20004, 'An error occurred in equipment assignment: ' || SQLERRM);
END;
/
