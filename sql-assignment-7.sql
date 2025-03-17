select * from company.worker;

-- Q-1. Write an SQL query to show only odd rows from a table.

SELECT *
FROM company.worker
where worker_id % 2 <> 0;

-- Q-2. Write an SQL query to clone a new table from another table.

create table company.clone_table
select * from company.worker;

select * from company.clone_table;