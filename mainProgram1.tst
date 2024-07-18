PL/SQL Developer Test script 3.0
38
DECLARE
    v_call_id Call.id_call%TYPE;
    v_team_cursor SYS_REFCURSOR;
    v_team_id Team.id_team%TYPE;
    v_team_name Team.name_of_team%TYPE;
    v_employee_id Employee.id_employee%TYPE;
    v_employee_name Employee.name_emp%TYPE;
BEGIN
    -- Simulate creating a new emergency call
    INSERT INTO Call (id_call, urgency, details, date_call,Id_Hospital)
    VALUES (941, 2, 'critical', SYSDATE,410)
    RETURNING id_call INTO v_call_id;
    
    DBMS_OUTPUT.PUT_LINE('New emergency call created with ID: ' || v_call_id);

    -- Assign an emergency team to the call
    v_team_cursor := assign_emergency_team(v_call_id);
    
    -- Display assigned team information
    DBMS_OUTPUT.PUT_LINE('Assigned team details:');
    LOOP
        FETCH v_team_cursor INTO v_team_id, v_team_name, v_employee_id, v_employee_name;
        EXIT WHEN v_team_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Team ID: ' || v_team_id || ', Team Name: ' || v_team_name ||
                             ', Employee ID: ' || v_employee_id || ', Employee Name: ' || v_employee_name);
    END LOOP;
    CLOSE v_team_cursor;

    -- Manage equipment assignment for the call
    manage_equipment_assignment(v_call_id);

    DBMS_OUTPUT.PUT_LINE('Emergency response process completed for call ID: ' || v_call_id);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        ROLLBACK;
END;
0
0
