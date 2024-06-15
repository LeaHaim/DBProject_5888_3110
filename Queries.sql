--select query 1: 
SELECT 
    t.name_of_team AS Team_Name,
    c.id_call AS id_call,
    c.urgency AS Call_Urgency,
    c.date_call AS Call_Date
FROM 
    Team t
JOIN 
    Employee e ON t.id_team = e.id_team
JOIN 
    Call c ON t.id_team = c.id_team
GROUP BY 
    t.name_of_team, c.id_call, c.urgency, c.id_call, c.date_call
HAVING 
    COUNT(e.id_employee) > 3
ORDER BY 
    COUNT(e.id_employee) DESC;

 --select query 2: 
select name_of_team, num_of_borrows 
from team natural join
(select id_team, count(id_team) as num_of_borrows
from employee natural join equipment
where status_e = 1
group by id_team)T;

 --select query 3:
select city, num_call , 2003 as year
from 
(select city, count(*) as num_call
from call natural join hospital natural join patient
where EXTRACT(YEAR FROM date_call) = 2003
group by city)T
where num_call >= all
(select count(*) as num_call
from call natural join hospital natural join patient
where EXTRACT(YEAR FROM date_call) = 2003
group by city);

 --select query 4:
 select name_of_team, amount
from team 
where  id_team not in(
select id_team
from call 
where urgency = 5  and details = 'critical');


--delete query 1: 
DELETE FROM Equipment
WHERE id_employee IN (
    SELECT id_employee FROM Employee WHERE salary <3000
) AND status_e = 1;

--delete query 2: 
DELETE FROM Patient WHERE id_call IN (
    SELECT id_call FROM Call WHERE id_team IN (
        SELECT id_team FROM Employee
        GROUP BY id_team
        HAVING COUNT(id_employee) < 3
    )
);

--update query 1: 
UPDATE Employee
SET salary = salary + 500
WHERE id_employee IN (
    SELECT id_employee
    FROM Call natural join employee
    WHERE EXTRACT(MONTH FROM date_call) = 4
    AND EXTRACT(YEAR FROM date_call) = 2010);

--update query 2: 
UPDATE Call
SET urgency = 5
WHERE details = 'critical'
AND id_team IN (
    SELECT id_team
    FROM Team
    WHERE amount < 3
);

