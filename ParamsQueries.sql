---param query1:
 select name_of_team, amount
from team 
where  id_team not in(
select id_team
from call 
where urgency = &<name="urgency" hint ="dep value between 1-5" type="integer">);

---param query 2:
select * from team
where id_team in (&<name="team_name" list ="select id_team,name_of_team 
from team order by name_of_team" description="yes" multiselect="yes">);

---param query 3:
select * from call   
where date_call between &<name="d_from" type="date">
  and &<name="d_to" type="date"> 
&<name="order" list="urgency,details" prefix " order by "
   suffix" desc" > ;
--param query 4:
select name_emp,name_of_team
 from employee natural join team
 where id_employee in(
select id_employee from equipment natural join employee
where status_e=1 and salary>&<name="salary" type="integer">)
and amount in
 (&<name="amount" list="select distinct amount from team" type="string" multiselect="true">);

