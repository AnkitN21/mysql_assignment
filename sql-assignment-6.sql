select * from company.worker;

-- Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

select * from company.worker
where joining_date > '2014-01-31' and JOINING_DATE < '2014-03-01';

-- Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

select 
	first_name, last_name, department, salary, joining_date
from company.worker
group by first_name,last_name, department, salary, joining_date
having count(*) > 1;

-- Q-3. How to remove duplicate rows from Employees table.

WITH rem_dupli AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY worker_id) AS RowNum
    FROM company.worker
)
SELECT *
FROM rem_dupli
WHERE RowNum = 1;


