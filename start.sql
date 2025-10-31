/*** Products sold model start ***/


-- Dimension table: dim_date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    date DATE,
    month VARCHAR(20),
    year INT 
);

-- Dimension table: dim_customer
CREATE TABLE dim_customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    location VARCHAR(100)
);

-- Dimension table: dim_sales_person
CREATE TABLE dim_sales_person(
    sales_person_id INT PRIMARY KEY,
    salesperson_name VARCHAR(100),
    level INT
);