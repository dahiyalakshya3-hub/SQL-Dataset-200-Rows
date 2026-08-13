create table SQL_Sales_Dataset_200_Rows(
order_id int,
customer_name varchar(50),
order_date date,
category varchar(50),
sub_category varchar(50),
product_name varchar(60),
quantity int,
unit_price int,
total_price int,
region varchar(30)
);

select * from 
SQL_Sales_Dataset_200_Rows;

select *
from sql_sales_dataset_200_rows
where customer_name='Caleb Davis';

select *
from sql_sales_dataset_200_rows
limit 10;

select * from
sql_sales_dataset_200_rows
order by total_price desc;

select category,
sum(total_price) as total_sales
from sql_sales_dataset_200_rows
group by category
order by total_sales desc;

select round(avg(total_price),2) as avg_order_value
from sql_sales_dataset_200_rows;

select count(*) as total_orders
from sql_sales_dataset_200_rows;

select sum(quantity) as total_quantity
from sql_sales_dataset_200_rows;

select customer_name,
sum(total_price) as total_sales
from sql_sales_dataset_200_rows
group by customer_name
order by total_sales desc;

select customer_name,
count(*) as number_of_orders,
sum(total_price) as total_sales
from sql_sales_dataset_200_rows
group by customer_name
order by total_sales desc;

select order_id,
customer_name,
total_price,
case
when total_price >= 10000 then 'High'
when total_price >- 5000 then 'Medium'
else 'Low'
end as order_category
from sql_sales_dataset_200_rows;

select 
case
when total_price >=10000 then 'High'
when total_price >=5000 then 'Medium'
else 'Low'
end as order_category,
count(*) as number_of_orders
from sql_sales_dataset_200_rows
group by 
case
when total_price >=10000 then 'High'
when total_price >=5000 then 'Medium'
else 'Low'
end;

SELECT *
FROM SQL_Sales_Dataset_200_Rows
WHERE total_price > (
    SELECT AVG(total_price)
    FROM SQL_Sales_Dataset_200_Rows
);

SELECT COUNT(*) AS above_average_orders
FROM SQL_Sales_Dataset_200_Rows
WHERE total_price > (
    SELECT AVG(total_price)
    FROM SQL_Sales_Dataset_200_Rows
);

SELECT
    COUNT(*) AS total_orders,
    SUM(quantity) AS total_quantity_sold,
    SUM(total_price) AS total_sales,
    ROUND(AVG(total_price), 2) AS average_order_value,
    MIN(total_price) AS minimum_order_value,
    MAX(total_price) AS maximum_order_value
FROM SQL_Sales_Dataset_200_Rows;

SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(quantity) AS units_sold,
    SUM(total_price) AS total_sales,
    ROUND(AVG(total_price), 2) AS average_order_value
FROM SQL_Sales_Dataset_200_Rows
GROUP BY category
ORDER BY total_sales DESC;

SELECT
    region,
    COUNT(*) AS total_orders,
    SUM(total_price) AS total_sales,
    ROUND(AVG(total_price), 2) AS average_order_value
FROM SQL_Sales_Dataset_200_Rows
GROUP BY region
ORDER BY total_sales DESC;


select *
from sql_sales_dataset_200_rows
;




