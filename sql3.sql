use employeemanagement;

#alter 1
alter table employee
add duration float not null;

#alter 2
alter table employee
drop duration;

#alter 3
alter table employee
modify salary float;

use employeemanagement;
select * from employee
where salary>=35000;

select * from employee 
where empname like "s%";

select * from employee
where empname="gaurav";

select * from employee
order by salary;

select * from employee
order by empname DESC;

select * from employee
order by salary DESC;

select * from employee
limit 3;

select empname, sum(salary) from employee
group by empname;