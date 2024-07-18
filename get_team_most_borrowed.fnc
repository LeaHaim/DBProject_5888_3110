CREATE OR REPLACE FUNCTION get_team_most_borrowed
RETURN Team.id_team%TYPE
AS
  -- Explicit cursor declaration
  CURSOR team_cursor IS
    SELECT e.id_team, COUNT(eq.id_equipment) AS equipment_count
    FROM Employee e
    JOIN Equipment eq ON e.id_employee = eq.id_employee
    GROUP BY e.id_team
    ORDER BY COUNT(eq.id_equipment) DESC;

  -- Record type for storing team data
  TYPE team_rec_type IS RECORD (
    id_team Team.id_team%TYPE,
    equipment_count NUMBER
  );
  team_rec team_rec_type;

  -- Variable to hold the team with most borrowed equipment
  v_team_id Team.id_team%TYPE;
BEGIN
  -- Open explicit cursor
  OPEN team_cursor;

  -- Fetch the first row from the explicit cursor
  FETCH team_cursor INTO team_rec;
  IF team_cursor%FOUND THEN
    v_team_id := team_rec.id_team;
  ELSE
    v_team_id := NULL;
  END IF;

  -- Close explicit cursor
  CLOSE team_cursor;

  RETURN v_team_id;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN NULL;
  WHEN OTHERS THEN
    RAISE;
END;
/
