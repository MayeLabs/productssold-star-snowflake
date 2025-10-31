/*** Products sold model snowflake ***/


-- Dimension table: dim_date
CREATE TABLE dim_date(
    date_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    date_of_week INT,
    quarter INT,
    is_holiday BOOLEAN,
    month INT,
    year INT
);

-- Dimension table: dim_transaction
CREATE TABLE dim_transaction(
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_amount DECIMAL(10,2),
    payment_method ENUM('Credito', 'Efectivo', 'Transferencia', 'Bizum')
);

-- Dimension table: dim_location
CREATE TABLE dim_location(
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100),
    state VARCHAR(100),
    city VARCHAR(100)
);

-- Dimension table: dim_customer
CREATE TABLE dim_customer(
    customer_id INT PRIMARY KEY,
    transaction_id INT,
    location_id INT,
    customer_name VARCHAR(100),
    FOREIGN KEY (transaction_id) REFERENCES dim_transaction(transaction_id),
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id)
);

-- Dimension table: dim_sales_person
CREATE TABLE dim_sales_person(
    salesperson_id INT PRIMARY KEY,
    salesperson_name VARCHAR(100),
    level INT
);

-- Dimension table: dim_region
CREATE TABLE dim_region(
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(100)
);
