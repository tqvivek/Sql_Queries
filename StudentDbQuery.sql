#Q1. Show all the student whose course id is either 103,102;
 select * from student;
       select * from student where courseId = 101 or courseId = 103;

#Q2 Show student name whose name starts with s
    select * from student where sName like "s%";

#Q3. Show all the faculty whose email id is not null
    select * from faculty;
   alter table faculty add column emailId varchar(45);
   select * from faculty
   where emailId is not null;
   
   select * from faculty;
   
    select * from faculty
   where emailId is  not null;
    
    

#Q4. Show the number of student in each course
  select * from student;
  select courseId,count(*) as total
  from student 
  group by courseId;
  
#Q5. Show the numbers of courses according to duration
  select * from course;
  select duration,count(*) as total_courses
  from course 
  group by duration;
  
  
#Q6. Increase the fees of all courses by 10%
  select * from course;
   update course set fees=fees+(fees*0.1);
   select * from course;
   
#Q7. Increase the salary of faculty by 20% whose experience is greater than 5 years
   select * from faculty;
  update faculty set fSalary = fSalary + (fSalary * 0.2) where experience>5;
   select * from faculty;
  
     
#Q8. Delete the course python
    select * from course;
    delete from course where coursename="python";
    
#Q9. Delete the students who has not paid the fees
 select * from student;
  delete from student where feeStatus="unpaid";
 

Q10.Show the faculty in desc order of salary 
# Q11. Show the student in asc order of course id and if the course is same then desc order of joining date
 select * from student;
  select * from student order by courseid asc,  joiningdate desc;
q12. Show the total student in each course in asc order
q13. Add the column joining date in faculty
q14. Change the column to exp of experience