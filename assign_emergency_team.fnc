CREATE OR REPLACE FUNCTION assign_emergency_team(
  p_call_id IN Call.id_call%TYPE
) RETURN SYS_REFCURSOR
IS
  v_team_cursor SYS_REFCURSOR;
  v_team_id Team.id_team%TYPE;
  --v_employee_count NUMBER; 
BEGIN
  -- Assign team
  SELECT id_team INTO v_team_id
  FROM (
      SELECT t.id_team, COUNT(e.id_employee) as employee_count
      FROM Team t
      LEFT JOIN Employee e ON t.id_team = e.id_team
      GROUP BY t.id_team
      HAVING COUNT(e.id_employee) BETWEEN 1 AND 10
      ORDER BY 
          CASE 
              WHEN COUNT(e.id_employee) = 3 THEN 1
              ELSE 2
          END,
          DBMS_RANDOM.VALUE
      )
  WHERE ROWNUM = 1;

  -- Update call with assigned team
  UPDATE Call
  SET id_team = v_team_id
  WHERE id_call = p_call_id;

  -- Return cursor with assigned team and employee information
  OPEN v_team_cursor FOR
    SELECT t.id_team, t.name_of_team, e.id_employee, e.name_emp
    FROM Team t
    JOIN Employee e ON t.id_team = e.id_team
    WHERE t.id_team = v_team_id;
  
  RETURN v_team_cursor;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20001, 'No suitable team found for the emergency call');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20002, 'An error occurred: ' || SQLERRM);
END;
/
