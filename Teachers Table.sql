create table teachers(
    teacher_id integer primary key,
	name char(10) not null,
	age integer check(age>18),
	experience real not null
);
select * from teachers;

insert into teachers(teacher_id,name,experience)
     values(1,'vinita',4.0),
           (2,'Prerana',2.5),
	       (3,'Aniket',4.0),
	       (4,'Abhishek',6.7),
	       (5,'Soham',5.0),
	        (6,'Priya',3.0);


delete from teachers
where teacher_id=5

alter table teachers
truncate column name;

update teachers
set name='Vanita'
where teacher_id=1;

truncate table teachers;


select * from teachers;

alter table teachers
add column age integer

update teachers
set age=40,experience=4
where teacher_id=1;

update teachers
set age=34,experience=3
where teacher_id=2;

update teachers
set age=43,experience=6
where teacher_id=3;

update teachers
set age=52,experience=20
where teacher_id=4;

update teachers
set age=39,experience=7
where teacher_id=5;

update teachers
set age=54,experience=15
where teacher_id=6;



