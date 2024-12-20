select * from company.worker;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias
-- name as <WORKER_NAME>.

select 
	first_name as Worker_Name
from company.worker;

-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select distinct department 
from company.worker;

-- Q-3. Write an SQL query to show the last 5 record from a table. 

select * 
from company.worker
limit 5  offset 8;

-- alter method

with rankrec as (
	select *, row_number() over () as row_num
    from company.worker
)
select *
from rankrec
where row_num > (select count(*) from company.worker) -5;


