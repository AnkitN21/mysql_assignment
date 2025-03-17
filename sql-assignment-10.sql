select * from company.worker;

-- Q-1. Write an SQL query to determine the 5th highest salary without using TOP or limit method.

select *
from company.worker w1
where 4= (
  select count(distinct salary)
  from company.worker w2
  where w2.salary > w1.salary
  );
  
-- Q-2. Write an SQL query to fetch the list of employees with the same salary.

select salary, group_concat(first_name separator " , ") as emp_name
from company.worker
group by salary
having count(*) > 1;