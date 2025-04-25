DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

SELECT * FROM products;

--- Total Quantity Available Products
select sum (quantity) as total_quantity
from products;

select sum (quantity) as total_quantity_of_ele
from products
where category='Electronics' and price>20000;


---count number of products
select count(*)as total_products
from products;

---count with condition
select count(*)as total_products
from products
where product_name like '%phone%';

---Avg Price of Product

select avg(price) as average_price
from products;

---Avg Price of Product with condition
select avg(price) as average_price
from products
where category='Accessories' or added_date > '2024-02-01';

---minimum and maximum price
select max(price) as max_price,
min(price) as min_price
from products;	   
	   
	   

SELECT * FROM products;

---get all the categories in uppercase

select upper(category) as Category_Capital
from products;


---get all the categories in uppercase

select lower(category) as Category_Capital
from products;

---join product_name and category text with hypen
select concat(product_name,'-',category) as product_details
from products;

--extract the first 5 characters from product_name 
select substring(product_name,1,5) as short_name
from products;

select substring(product_name,1,3) as short_name
from products;

---count length
select product_name,length(product_name) as count_of_char
from products;

--Remove leading and trailing spaces from string
select trim('  Monitor        ') as trim_text;
select length(trim('  Monitor        ')) as trim_text;
select length('  Monitor        ') as trim_text;

---Replace the word 'phone' with 'device' in product names
select replace(product_name,'phone','device') as updated
from products;

---get the first 3 characters from category
select left(category,3) as category_capital
from products;

---1.now()-get current date and time
select now() as current_datetime;

---2.Current_DAte()-get current date 
select current_date as today_date

select Added_date,current_date,(current_date-added_date) as difference
from products;

---3.Current_rime()-get current time 
select current_time as today_time;

--4.EXTRACT()-Extract parts of a Date
---Extract the year,month,and day from the added_date column.

select product_name,
extract(year from added_date) as year_added
from products;

select product_name,
extract(month from added_date) as month_added
from products;

select product_name,
extract(day from added_date) as day_added
from products;

--5.Age()-calculate age between Dates 
--calculate thr time difference between added_dateand today's date.

select product_name,
age(current_date,added_date) as age_since_added
from products;

--6.TO_CHAR()-format dates as strings
--format added_date in a custom format(DD-Mon-YYYY)

select product_name,
To_Char(added_date,'DD-Mon-YYYY') as age_since_added
from products;

--7.Date_Part()-get specific Date part
--Extract the day of the week from added_date

select product_name,added_date,
date_part('year',added_date) as day_of_week
from products;

--8.Date_TRUNK()-Truncate date to Precision
--Truncate added_date to the start of the month.

select product_name,added_date,
date_trunc('month',added_date)as Month_start
from products;

--9.Interval-add or Subtract time Intervala
--Add 6 months to the added_date

select product_name,added_date,
added_date + interval '6 days' as new_date
from products;

--10.-To_date-Convert string to date
--Convert a string to a date format

select to_date('28-11-2024','DD-MM-YYYY')as converted_date;



