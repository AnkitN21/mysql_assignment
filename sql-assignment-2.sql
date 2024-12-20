select * from company.worker;

-- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

select
	substring(first_name, 1,3) as first3char
from company.worker;

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name
-- column ‘Amitabh’ from Worker table.

select 
	instr(first_name, 'a') as postion
from company.worker
where first_name = 'amitabh';

-- Q-3. Write an SQL query to print the name of employees having the highest salary in each

select
	max(salary) as highsal_dept
from company.worker
group by department;
