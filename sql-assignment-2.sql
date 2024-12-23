select * from company.worker;

-- Q-1. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.

select *,
	substring(first_name, 1,3) as first_name
from company.worker;

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name
-- column ‘minakshi’ from Worker table.

select 
	position("i" in first_name) as position
    -- instr(substring(first_name,3,10), 'i') + 2 as postion
from company.worker
where first_name = 'minakshi';

select
	locate("i",
		substring(first_name,
			locate("i",first_name)+1, 
				length(first_name))) + locate("i", first_name) as position
from company.worker
where first_name= "minakshi";

-- Q-3. Write an SQL query to print the name of employees having the highest salary and 
-- highest salary in each department.

select
	concat(first_name," ",last_name) as full_name, salary, department
from company.worker
where(department, salary) in (
	select department, max(salary)
    from company.worker
    group by department
    );

select 	
	first_name,
    salary,
    department
from company.worker as w1
where salary = (
			select max(salary)
            from company.worker as w2
            where w1.department = w2.department);