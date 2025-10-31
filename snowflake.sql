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