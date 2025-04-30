CREATE TABLE employee2(
	employee_id	INT	PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),	
	department VARCHAR(20),	
	salary NUMERIC(10,2),	
	joining_date Text,	
	age INT	
);

SELECT * FROM employee2;

select first_name,salary,(salary*0.10) as Bonus from employee2;

---calculate new salary

select first_name,last_name,salary,
(salary*12) as annual_salary,
(salary*0.05) as Increment_salary,
(salary + salary * 0.05) as new_salary
from employee2 ;

----matches age 30
select * from employee2
where age=30;

--matches all except 30
select * from employee2
where age!=30;

---salary greater than 50000
select  * from employee2
where salary>50000;

---salary greater than equal to 50000
select  * from employee2
where salary>=50000;

---salary less than equal to 50000
select  * from employee2
where salary<=50000;

--- Using logical and oprator
select* from employee2
where age>=40 and salary>=50000;


select* from employee2
where age>=60 and salary>=90000;

--- Using logical or oprator
select* from employee2
where age>=60 or salary>=100000;

--- Using logical not oprator
select* from employee2
where not(department='IT');


---retrive employee whose salary is between 40,000 and 60,000 -use betwwen operator
select first_name,last_name,salary
from employee2
where salary between 40000 and 60000;

---find employee whose email address end with gmail.com-use lIKE operator
select first_name,last_name,email
from employee2
where email like '%@gmail.com';

select first_name from employee2
where first_name like 'J%';

select first_name from employee2
where first_name like '%a';

select first_name from employee2
where first_name like 'A%';

select first_name from employee2
where first_name like '%a%';

---Retrieve employee who belong to either the 'Finance' or 'Marketing' departments--use In operator

select first_name,last_name,department
from employee2
where department In ('Finance','Marketing');


select first_name,last_name,department
from employee2
where department In ('Finance','Marketing','IT');

---find employee  where the email column is NULL(if applicable)
select first_name,last_name,email
from employee2
where email IS NULL;(--it not showing any output because there is no null value in the table)

---list employees sorted by salary in Descending order
select first_name,last_name,salary
from employee2
order by salary DESC;

----Reterive the top 5 highest-paid employees 
select first_name,last_name,salary
from employee2
order by salary DESC
limit 5;

---Retrieve a list of unique departments
select distinct department 
from employee2;

select count (distinct department) 
from employee2;

select count (distinct department) as dept_nuique_count 
from employee2;



