/*** Products sold model start ***/


-- Dimention table: dim_date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    date DATE,
    month VARCHAR(20),
    year INT 
)

