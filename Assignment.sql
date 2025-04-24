DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

INSERT INTO employee (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


select * from employee;

--Assignment Questions
--Q1: Retrieve all employees’ first_name and their departments.
select first_name,department from employee;

--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
update employee
set salary =salary + (salary*0.1)
where department='IT'

--Q3: Delete all employees who are older than 34 years.
delete from employee
where age>34;
select * from employee;

--Q4: Add a new column `email` to the `employees` table.
alter table employee
add column email varchar(100);
select * from employee;

--Q5: Rename the `department` column to `dept_name`.
alter table employee
rename column department to dept_name;
select * from employee;

--Q6: Retrieve the names of employees who joined after January 1, 2021.
select first_name,last_name,joining_date from employee
where joining_date>'2021-01-01';

--Q7: Change the data type of the `salary` column to `INTEGER`.

alter table employee
alter column salary type integer using salary::Integer;
select * from employee;

--Q8: List all employees with their age and salary in descending order of salary.
select first_name,age,salary from employee order by salary desc;


--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30
INSERT INTO employee (first_name, last_name, dept_name, salary, joining_date, age) VALUES
('Raj','Singh','marketing','60000','2023-09-15', 30);
select * from employee;

--Q10: Update age of employee +1 to every employee 
update employee
set age=age+1;
select * from employee;

