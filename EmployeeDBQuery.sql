use employee;

select * from city;
select * from location;
select * from employee;
select * from department;

select * from company;

#========================================* Alter  Query **====================================================== 

# 1=>add column in city

select * from city;
alter table city
add column state varchar(30);

# 2.add column in location

select * from location;
alter table location
add column locin varchar(30);

# 3.drop column in country
select * from city;
alter table city
drop column  state ;

# 4.drop column in location
select * from location;
alter table location
drop column  locin ;

# 5.remane column in department
select * from department;
alter table department
rename column  locationid to lid ;

# 6.modify column in employee
select * from employee;
alter table emloyee
modify column  experiance int;


#========================================* select  Query **====================================================== 

# 1  display table employee.

select * from employee;

# 2. display name and salary of employee
select * from employee;

select  empid,mail ,salary from employee;

# 3.find perticular name from employee.

select * from employee 
where empid=15;


# 3.display table department.

select * from department;

# 5.find perticular name from employee.

select * from department;
select * from department
where dname="BCA";

# 6.using and display info

select * from department;
select * from department 
where deptid=12 and dname="it";

# 7.using or display info

select * from department;
select * from department 
where deptid=12 or dname="BBa";

# 8.using not display info

select * from department;
select * from department 
where not deptid=12;

# 9.using Order by display info

select * from location;
select * from location 
order by locname;

# 9.using Order byDecs Order display info

select * from location;
select * from location 
order by cityid desc;


# 10.using  Group By display info

select * from company;
select companyid, count(*) as total
 from  company
 group by  companyid;

# 11.using  Group By display info  location

select * from location;
select cityid, count(*) as total
 from  location
 group by  cityid;
 
 
 # 12.using  Having  display info  department

select * from department;
select lid, count(*) as total
 from  department
 group by  lid
 having count(*)>5;
 
  # 13.using  Between  display info  department

select * from department;

select deptid
from department
where deptid between 12 and 18;

 # 14.using  Between  display info  location

select * from location;

select  locatioid
from location
where  locatioid between 5 and 10;

# 15.using and display info

select * from company;
select * from company 
where companyid=12 and regno=234;

#========================================* Delete  Query **====================================================== 

# 1.delete column.
select * from location;

delete from location
where locin="india";

# 2.delete tabble compant;

select * from company;

delete from company;

select * from company;

# 3.delete tabble employee record;

select * from employee;

delete from employee
where experiance=3;

# 5.delete tabble department record;

select * from department;
delete from department
where companyid=85;


#========================================* Update  Query **====================================================== 

# 1.update the employee name

select * from employee;

update employee

set name="Mahi"  ,mail="mahi@gmail.com"
where empid=13;


# 2.update dept name

select * from department;
update department
set dname ="BVOC"
where deptid=13;

# 3.update location

select * from location;

update location
set locname ="Dubai"
where locatioid=13;

# 3.update location table cityid
update location
set cityid=77
where locatioid=22;

select * from location;

# 4.lname and city id from location
update location
set  locname="UP"  and cityid=45  
where locatioid=3; 

select * from location;


# 5.update the employee name

select * from employee;

update employee

set name="Akshay"  ,mail="aksahy@gmail.com"
where empid=45;