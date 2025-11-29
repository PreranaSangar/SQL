# Constarints
create table data(id int unique,name varchar(30) not null,
age int check(age>18),course varchar(20) default 'mysql');

desc data;

insert into data values(1,'ankush',20,'excel');
insert into data values(2,'ankush',20,'excel');
insert into data(id,name,age) values(3,'priya',22);

select * from data;

# Primary key constarint
# It is a combination of not null and unique constaints

drop table data;
create table data(id int primary key,name varchar(20)unique);
desc data;
insert into data values(null,'A');
select * from data;