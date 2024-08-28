--SELECT * FROM employee where firstName="Forster";
--SELECT * FROM customer LIMIT 10;
--SELECT * FROM model LIMIT 10;
--SELECT * FROM inventory LIMIT 10;
--SELECT * FROM sales LIMIT 10;

/*
select 
emp.firstName,
emp.lastName,
emp.title,
mng.firstName as "Manager firstname",
mng.lastName as "Manager lastname",
emp.managerId
from employee emp
inner join employee mng
  on emp.managerId=mng.employeeId 
  --and emp.managerId=22
order by emp.managerId
;

select count(emp.managerId), emp.managerId, emp.firstName, emp.lastName
from employee emp
group by emp.managerId
order by emp.managerId, emp.firstName, emp.lastName
;


select emp.firstName, emp.lastName, emp.title, emp.startDate, sls.salesId
from 
employee emp
left join sales sls
  on emp.employeeId = sls.employeeId
where emp.title = 'Sales Person'
and sls.salesId is NULL
;

select cst.firstName,cst.lastName,cst.email,sls.salesAmount,sls.soldDate
from customer cst
inner join sales sls
  on cst.customerId = sls.customerId
UNION
select cst.firstName,cst.lastName,cst.email,sls.salesAmount,sls.soldDate
from customer cst
left join sales sls
  on cst.customerId = sls.customerId
WHERE sls.salesId is NULL  
UNION
select cst.firstName,cst.lastName,cst.email,sls.salesAmount,sls.soldDate
from sales sls
LEFT join customer cst
  on sls.customerId = cst.customerId
WHERE cst.customerId is NULL
;
*/
