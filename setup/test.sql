--SELECT * FROM employee where firstName="Forster";
--SELECT * FROM customer LIMIT 10;
--SELECT * FROM model LIMIT 10;
--SELECT * FROM inventory LIMIT 10;
--SELECT * FROM sales order by solddate desc;

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

select emp.employeeId,emp.firstName, emp.lastName, count(*) NumberOfCarsSold
from sales sls
inner join employee emp
  on sls.employeeid=emp.employeeid
group by emp.employeeId
order by NumberOfCarsSold DESC
;

select emp.firstName, emp.lastName, max(sls.salesAmount),min(sls.salesAmount) 
from sales sls
INNER join employee emp
  on sls.employeeId=emp.employeeId
--where sls.soldDate >= year(2023-01-01)
group by sls.employeeId
order by sls.employeeId
;
*/
select emp.employeeId,emp.firstName, emp.lastName, count(*) NumberOfCarsSold
from sales sls
inner join employee emp
  on sls.employeeid=emp.employeeid
group by emp.employeeId
having NumberOfCarsSold>=5
order by NumberOfCarsSold DESC
;