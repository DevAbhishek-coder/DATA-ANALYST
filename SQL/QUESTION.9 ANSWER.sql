USE CLASSICMODELS;

-- Q9. Stored Procedures in SQL with parameters

-- a. Create a stored procedure Get_country_payments which takes in year and country as inputs and gives year wise, country wise total amount as an output. Format the total amount to nearest thousand unit (K)
-- Tables: Customers, Payments

DELIMITER //

CREATE PROCEDURE Get_country_payments(
    IN p_year INT,
    IN p_country VARCHAR(50)
)
BEGIN
    SELECT 
        YEAR(p.paymentDate) AS payment_year,
        c.country,
        CONCAT(ROUND(SUM(p.amount)/1000, 0), 'K') AS total_amount_in_K
    FROM customers c
    JOIN payments p 
        ON c.customerNumber = p.customerNumber
    WHERE YEAR(p.paymentDate) = p_year
      AND c.country = p_country
    GROUP BY YEAR(p.paymentDate), c.country;
END //

DELIMITER ;

CALL Get_country_payments(2003, 'France');

