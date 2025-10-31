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
    salesperson_id INT PRIMARY KEY,
    salesperson_name VARCHAR(100),
    level INT
);

-- Dimension table: dim_store
CREATE TABLE dim_store(
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    region VARCHAR(65)
);

-- Dimension table: dim_product
CREATE TABLE dim_product(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Fact table: fact_sales
CREATE TABLE fact_sales(
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    date_id INT,
    customer_id INT,
    salesperson_id INT,
    store_id INT,
    units_sold INT,
    sales_amount DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES dim_sales_person(salesperson_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
);
