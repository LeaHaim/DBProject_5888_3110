-- Stage 1 : equipment Integration 

-- Dropping name_e column
ALTER TABLE EQUIPMENT DROP COLUMN name_e;

-- Adding new columns to TEMP_EQUIPMENT
INSERT INTO EQUIPMENT (ID_EQUIPMENT, DATE_BORROW)

CREATE TABLE temp_EQUIPMENT AS
SELECT Distinct e.oserialnumber as ID_EQUIPMENT , l.returndate as date_borrow
FROM EQUIPMENTS e
JOIN LOANS l ON e.oserialnumber = l.oserialnumber
WHERE e.oserialnumber NOT IN (SELECT ID_EQUIPMENT FROM EQUIPMENT);

--adding status_e to temp_EQUIPMENT
ALTER TABLE temp_EQUIPMENT 
ADD status_e NUMBER(1);
UPDATE temp_EQUIPMENT e
SET status_e = (0);

--adding id_employee to temp_EQUIPMENT
ALTER TABLE temp_EQUIPMENT 
ADD id_employee NUMBER(3);

UPDATE temp_EQUIPMENT e
SET id_employee = select eid from employees;

BEGIN
  UPDATE temp_EQUIPMENT t
  SET t.id_employee = 633;
  
  COMMIT;
END;

select * from temp_EQUIPMENT;

--integrate the tables
CREATE TABLE new_EQUIPMENT AS
SELECT id_EQUIPMENT, date_borrow, status_e, id_employee
FROM EQUIPMENT
UNION
SELECT id_EQUIPMENT, date_borrow, status_e, id_employee
FROM temp_EQUIPMENT;

ALTER TABLE new_EQUIPMENT
DROP COLUMN id_employee;

--drop temp_equipment


-- Stage 2 : employee integration
CREATE TABLE new_employee AS
(
    SELECT DISTINCT e.eid as ID_employee, e.ename as name_emp, e.salary
    FROM employees e
    WHERE e.eid NOT IN (SELECT ID_employee FROM employee)
    UNION
    SELECT ID_employee, name_emp, salary
    FROM employee
);

select * from new_employee;


-- Stage 3 : adding order table 

ALTER TABLE orders
ADD id_team number(3);

DECLARE
    CURSOR c_team IS 
        SELECT id_team 
        FROM team 
        ORDER BY DBMS_RANDOM.VALUE;
    
    v_id_team team.id_team%TYPE;
    v_count NUMBER := 0;
BEGIN
    OPEN c_team;
    
    FOR rec IN (SELECT ROWID, ordate, oserialnumber, paymentmethod,cid,shipid FROM orders WHERE id_team IS NULL) LOOP
        FETCH c_team INTO v_id_team;
        
        IF c_team%NOTFOUND THEN
            EXIT;
        END IF;
        
        UPDATE orders
        SET id_team = v_id_team
        WHERE ROWID = rec.ROWID;
        
        v_count := v_count + 1;
    END LOOP;
    
    COMMIT;
    CLOSE c_team;
END;

ALTER TABLE orders
DROP COLUMN CID;

ALTER TABLE orders
DROP COLUMN shipid;

select * from orders;

--stage 4: make id_team forigin key
ALTER TABLE orders
ADD CONSTRAINT fk_team_orders
FOREIGN KEY (id_team)
REFERENCES team(id_team);

--stage 5: adding oserial number as forigin key in new_EQUIPMENT
ALTER TABLE new_EQUIPMENT
ADD oserialnumber number(3);

DECLARE
    CURSOR c_order IS 
        SELECT oserialnumber 
        FROM orders 
        ORDER BY DBMS_RANDOM.VALUE;
    
    v_oserialnumber orders.oserialnumber%TYPE;
    v_count NUMBER := 0;
BEGIN
    OPEN c_order;
    
    FOR rec IN (SELECT ROWID, ID_EQUIPMENT, DATE_BORROW,STATUS_E FROM new_EQUIPMENT WHERE oserialnumber IS NULL) LOOP
        FETCH c_order INTO v_oserialnumber;
        
        IF c_order%NOTFOUND THEN
            EXIT;
        END IF;
        
        UPDATE new_EQUIPMENT
        SET oserialnumber = v_oserialnumber
        WHERE ROWID = rec.ROWID;
        
        v_count := v_count + 1;
    END LOOP;
    
    COMMIT;
    CLOSE c_order;
END;

select * from new_EQUIPMENT;

--stage 6: make oserialnumber forigin key
ALTER TABLE new_EQUIPMENT
ADD CONSTRAINT fk_id_orders
FOREIGN KEY (oserialnumber)
REFERENCES orders(oserialnumber);

--stage 7: link team table to new_employee table
ALTER TABLE new_Employee
ADD id_team number(3);

DECLARE
    CURSOR c_team IS 
        SELECT id_team 
        FROM team 
        ORDER BY DBMS_RANDOM.VALUE;
    
    v_id_team team.id_team%TYPE;
    v_count NUMBER := 0;
BEGIN
    OPEN c_team;
    
    FOR rec IN (SELECT ROWID, ID_EMPLOYEE, NAME_EMP, SALARY FROM new_employee WHERE id_team IS NULL) LOOP
        FETCH c_team INTO v_id_team;
        
        IF c_team%NOTFOUND THEN
            EXIT;
        END IF;
        
        UPDATE new_employee
        SET id_team = v_id_team
        WHERE ROWID = rec.ROWID;
        
        v_count := v_count + 1;
    END LOOP;
    
    COMMIT;
    CLOSE c_team;
END;

select * from new_employee;

--stage 8: make id_team forigin key
ALTER TABLE new_employee
ADD CONSTRAINT fk_team_employee
FOREIGN KEY (id_team)
REFERENCES team(id_team);

--stage 9: drop all the unnecessary tables
DROP TABLE loans;
DROP TABLE employees;
DROP TABLE EQUIPMENT;
DROP TABLE employee;
DROP TABLE EQUIPMENTs;
DROP TABLE catalog;
DROP TABLE clients;
DROP TABLE shipmentaddress;
DROP TABLE temp_EQUIPMENT;
DROP TABLE temp_employee;










