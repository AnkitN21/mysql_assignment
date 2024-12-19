use company;

select * from worker;
select 
	first_name as Worker_Name
from worker;

select distinct department from worker;

select * 
from company.worker
limit 5  offset 8;