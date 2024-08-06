CREATE OR REPLACE VIEW EmployeeTeams AS
SELECT 
    e.id_employee,
    e.name_emp,
    e.salary,
    t.name_of_team,
    (SELECT AVG(e2.salary) 
     FROM Employee e2 
     WHERE e2.id_team = e.id_team) AS avg_team_salary
FROM 
    Employee e
JOIN 
    Team t ON e.id_team = t.id_team;
    
    
SELECT * 
FROM EmployeeTeams;

SELECT * 
FROM EmployeeTeams
WHERE avg_team_salary > 5000;
