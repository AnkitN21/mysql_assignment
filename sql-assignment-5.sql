select * from company.worker;

-- Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” 
-- from Worker table.

select * from company.worker 
where first_name not in('vipul','satish');

-- Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with
-- ‘h’ and contains six alphabets.

select * from company.worker
where first_name like '_____h';

-- Q-3. Write a query to validate Email of Employee.

select * from company.worker
where email like '%.%@company.com';





