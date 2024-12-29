select * from company.worker;

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing
-- white spaces from the right side.

select
	rtrim(first_name) as rtname
from company.worker;

-- Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker
-- table and prints its length.

select
	distinct(length(department)) as size
from company.worker;

-- Q-3. Write an SQL query to fetch nth max salaries from a table.

select 
	first_name, salary 
from company.worker 
order by salary desc 
LIMIT 1 offset (n-1);