create database excelr_VAC; # single line comment
/* 
create
alter
for multiple line commemts: MNC company asked what symbole used for mullty line comment
*/

# to activate the db
USE excelr_VAC;
create table student (std int, sname varchar(30),age int);

# TO check  structure of table
describe student;
# Insert records in table
insert into student values (1,'Sanjay',30);

# to check or feach the table
 select * from student;
 
 select std,age from student;
 
 
 
 
# DDL commands - create Table or create database
# Alter to change the  col_name or database or table name

 
 describe student;
  alter table student add column course_id int;
  
  alter  table student drop column course_id;
  
  # show to  chnage the datatype only chnge datatyope
  alter table student modify sname char(30);
  
  # How to change the datatype with with column
   alter table student change sname stu_name varchar(40);
   
   # how to change the col name
   alter table student rename column std to regno; # secondary way
   
   # Primary way alter
   rename table student to student_data;  #to chnage the table name
 # Add  a column city in student table with dataype varchar(10)
   alter  table student_data drop column city;

 
   alter table student_data add column cityy varchar(10);
	alter  table student_data drop column cityy;
   alter table student_data add column city varchar(10);

 describe student_data;
 # change  a column city to address with dataype varchar(10)

alter table student_data change city address varchar(50);
 
 
 # Delete | Drop | Truncate
 
# Truncate= it worksfaster than delete command
select * from student_data; # to check the records
insert into student_data values(2,'Ankush',27,'a') ,(3,'x',20,'A');
truncate table student_data; #to delete all records at same time


# delete command --to delete specific records
 select * from student_data;
 insert into student_data values(2,'Ankush',27,'a'),(3,'x',20,'A');
 
 # where cluse to specify the condition
 set sql_safe_updates=0;
 delete from student_data where regno=3; # it delete sepcific record
 
 delete from student_data; # it delete all records
 
 # Drop Command-- It will delete the table , recoed, columns all  from db
 
 drop table student_data;
 select * from student_data;

# DML commands
create table Patient(pid int,name varchar(20),city varchar(20));

# Implict way
insert into Patient values(1,'amay','mumbai');
select * from patient;
insert into Patient values(2,'rupa','Hyd'),(3,'amit','Thane');
 
 # Explicit Way
 insert into patient(pid,city) values(5,'chaa');
 
 #Update Commnad
 # to change the existing values in the table
 select * from patient;
 insert into patient(pid) values(6);

 update patient set city='Bangalore' where city is null;
 set sql_safe_updates=0;
 
select * from patient;

update patient set city='Thane' where pid=1; # equals to operator for only one record

update patient set name='Rohan' where pid in (4,6); # in operator for multiple recore

update patient set name='prerana' where pid=5;

#remove the records woth patient id 6
delete from patient where pid=6;
#select command works Like print statement
 select 8+4;
 select 98+4;
select 8*4;
  
select 8*4 as output;

select * from myemp;
select * from myemp where EMP_ID=200;
select * from myemp where EMP_ID in (116,119,114);
select * from myemp where EMP_ID between 100 and 200;
select * from myemp limit 5; # up to 5
select * from myemp limit 2,5;
select * from myemp limit 5,10; # start 5 record will skip up to 10
select * from myemp where EMP_ID not in (100,101);

#order by  clause the data in Asc or desc manner
# by deafault order by is asc order
select * from myemp;
select * from myemp order by EMP_ID desc;

select * from myemp order by SALARY;
select * from myemp order by SALARY desc;

select DEP_ID,MGR_ID from myemp order by DEP_ID desc,MGR_ID asc;
select * from myemp order by DEP_ID desc,MGR_ID asc;

# find the emp who earning more than 10000 salary
select * from myemp where SALARY > 10000;

# wildcards-- Pattern matching
select * from myemp where FIRST_NAME like 'A%';
select * from myemp where FIRST_NAME like 's%';

select * from myemp where FIRST_NAME like 'AS%';
select * from myemp where FIRST_NAME like '_A%';

# Distinct clause --- to remove duplicates
select * from patient;
insert into patient(pid,city) values(6,'chaa');
select distinct * from patient;
select distinct(city) from patient;

# To add bonus col
select * from myemp;
select *, Salary +10000 as bonus from myemp; # , means add in one more col bonus
select *, Salary +COMMISSION_PCT as bonus from myemp;
# Find the emp Who is hired after  2000 year
select* from myemp where year(hire_date)>2000;

# find the emp detils max salary  using order by
SELECT *FROM myemp ORDER BY salary DESC LIMIT 1;

# Find the salary between 8000 to 12000

select * from myemp where SALARY between 8000 and 12000;

# find thr last_name end with 'z'
select * from myemp where LAST_NAME like '%z';

# case statement
select * from myemp;
select emp_id,first_Name,hire_date,SALARY,case
when SALARY >20000 then 'level 01'
when SALARY >10000 and SALARY=20000 then 'level 02'
else 'level 03'
end as salary_status
from myemp;

select * from movies;
select title,category,case        # select *,case---ew also use 
when category='Animations' then 09
when category='Action' then 08
when category='18+' then 07
else 06
end as Rating
from movies;


# Unioun and Union All

#Union---stacking of records one above another and it will emove duplicate
#union all---

create table T1(id int);
insert into T1 values(1),(2),(4),(7);
create table T2(id int);
insert into T1 values(2),(4),(8),(10);
select * from T1 union select Id,grade from T2; # it remove duplicates
select * from T1 union all select * from T2; # it allow the duplicates

alter table T1 add column grade varchar(2) default 'A';
select * from T1;

alter table T2 add column grade varchar(2) default 'B' first;
select * from T2;

select * from salary_status;
alter table salary_status add column email varchar(20) after hire_date;

# Aggregate Function
# SUM- MIN-MAZ-COUNT_AVG

select min(salary) from myemp;
select max(salary) from myemp;
select avg(salary) from myemp;
select count(salary) from myemp;
select sum(salary) from myemp;

# Group by clause
select *from myemp;
# find the max salary from each dep

select dep_id,max(salary) as sal from myemp group by DEP_ID order by DEP_ID;

# find the number of np in each department

select DEP_ID ,count(EMP_ID) as emp from myemp group by DEP_ID order by DEP_ID;

# Find the min salary in each job_id
select job_id ,min(SALARY) as min_sal from myemp group by job_id order by job_id;

# Having clause
# find the job whose max salary is more than 10000

select job_id ,min(SALARY) as min_sal from myemp group by job_id having max(SALARY)>10000;

# Find the dep in which there is more  thrn 5 emps
select DEP_ID as emp from myemp group by DEP_ID having count(EMP_ID)>5;

# Coalesce Function--- to treate the null valuse

create table form(first_name varchar(50),
middle_name varchar(50),
last_name varchar(50));

insert into form values(null,null,'salary'),
(null,'arjun',null),('Priya','Sharma',null),
(null,'Samay','Varma'),(null,null,'sakshi');
select * from form;
select coalesce(first_name,middle_name,last_name) as names from form;





































































  


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 