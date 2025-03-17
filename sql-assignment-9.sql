select * from company.worker;

-- Q-1. Write an SQL query to show the top n (say 10) records of a table.

select * from company.worker
limit 10;

-- Q-2. Write an SQL query to determine the nth (say n=5) highest salary from a table.

select * from company.worker
order by salary desc
limit 1 offset 4;