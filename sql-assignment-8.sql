select * from company.workerdetails;
select * from company.worker;

-- Q-1. Write an SQL query to fetch intersecting records of two tables.

select W.Worker_id, concat(W.first_name," ", W.last_name) as full_name, WD.city
from company.worker W
join company.workerdetails WD
	on W.worker_id = WD.worker_id;

-- Q-2. Write an SQL query to show records from one table that another table does not have.

select W.Worker_id, concat(W.first_name," ", W.last_name) as full_name
from company.worker W
left join company.workerdetails WD
	on W.worker_id = WD.worker_id
    where WD.WORKER_ID is null;
