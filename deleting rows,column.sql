create table employee2(
    employee_id int primary key,
	name varchar(100) not null,
	position varchar(50),
	department varchar(50),
	hire_date date,
	salary numeric(10,2)
);

select * from employee2;

insert into employee2(employee_id,name,position,department,hire_date,salary)
    values(101,'Ajit sharma','Data Analyst','Data science','2022-05-15',65000.00),
	      (102,'Priya Desai','software Engineer','IT','2021-09-20',75000.00),
		  (103,'Rajesh Kumar','HR Mangar','Human Resource','2019-03-10',82000.00),
		  (104,'Senha Patel','Marketing Specialist','Marketing','2020-11-25',58000.00),
	      (105,'Vikram Singh','Sales Executive','sales','2023-02-12',62000.00);

delete from employee2
where employee_id=105;

alter table employee2
drop column salary;

drop table if exists employee2;
		  