select * from company.worker;

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

select
	replace(first_name, 'a', 'A') as subfirst
from company.worker;

-- Q-2. Write an SQL query to print all Worker details from the Worker table order by
-- FIRST_NAME Ascending and DEPARTMENT Descending.

select * from company.worker
order by first_name , department desc;

-- Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.

select first_name, last_name, salary
from company.worker
order by salary desc;