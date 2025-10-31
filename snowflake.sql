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