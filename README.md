# SQL Sales Dataset – 200 Rows

## 📌 Project Overview

This project is a SQL-based sales data analysis project created using PostgreSQL.

The dataset contains 200 sales records with information about orders, customers, products, categories, quantities, prices, and regions.

The main objective of this project is to practice SQL queries and perform basic sales analysis using PostgreSQL.

## 🛠️ Tools & Technologies

- PostgreSQL
- SQL
- GitHub

## 📊 Dataset Columns

| Column | Description |
|---|---|
| order_id | Unique ID of the order |
| customer_name | Name of the customer |
| order_date | Date of the order |
| category | Product category |
| sub_category | Product sub-category |
| product_name | Name of the product |
| quantity | Quantity sold |
| unit_price | Price per unit |
| total_price | Total order value |
| region | Sales region |

## 🔍 SQL Analysis Performed

### 1. Basic Data Exploration
- Displayed all records
- Retrieved the first 10 records
- Filtered orders by customer name
- Sorted orders by total sales

### 2. Sales Analysis
- Calculated total sales by category
- Calculated average order value
- Calculated total number of orders
- Calculated total quantity sold
- Identified top customers based on total sales

### 3. Customer Analysis
- Calculated total sales per customer
- Calculated number of orders per customer
- Ranked customers based on total sales

### 4. Order Classification

Orders were classified into three categories using `CASE`:

- High: total price >= 10,000
- Medium: total price >= 5,000
- Low: total price < 5,000

### 5. Subquery Analysis

Identified orders whose total price is greater than the overall average order value.

### 6. Category Analysis

For each category, calculated:

- Total orders
- Units sold
- Total sales
- Average order value

### 7. Regional Analysis

For each region, calculated:

- Total orders
- Total sales
- Average order value

## 📈 Key SQL Concepts Used

```text
SELECT
WHERE
LIMIT
ORDER BY
GROUP BY
SUM()
AVG()
COUNT()
MIN()
MAX()
ROUND()
CASE WHEN
Subqueries
Aggregate Functions


