--Constraint query 1:
ALTER  TABLE  call ADD CONSTRAINT Cnstr_urgency CHECK (urgency Between 1 and 5); 
INSERT INTO CALL  VALUES (1, 7, 'Heart Attack', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 111, 101);
select * from equipment;

--Constraint query 2:
ALTER TABLE equipment MODIFY status_e DEFAULT 0; 
INSERT INTO EQUIPMENT(date_borrow,name_e,ID_EQUIPMENT,ID_EMPLOYEE)  VALUES ( TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Laptop',800,335);
select * from equipment where id_equipment=800;
--Constraint query 3:
ALTER TABLE Call MODIFY date_call DATE NOT NULL;
INSERT INTO Call (id_call, urgency, details, date_call, id_team, id_hospital) VALUES (999, 5, 'critical', NULL, 100, 202);

