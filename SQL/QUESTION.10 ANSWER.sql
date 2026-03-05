use classicmodels;

-- Q10. Window functions - Rank, dense_rank, lead and lag

-- a) Using customers and orders tables, rank the customers based on their order frequency.
SELECT * FROM ORDERS;
SELECT * FROM CUSTOMERS;

SELECT 
    C.CustomerName,
    COUNT(O.OrderNumber) AS Order_Count,
    RANK() OVER (ORDER BY COUNT(O.OrderNumber) DESC) AS order_frequency_rnk
FROM Customers C
JOIN Orders O
ON C.CustomerNumber = O.CustomerNumber
GROUP BY C.CustomerName;



-- b) Calculate year wise, month name wise count of orders and year over year (YoY) percentage change. Format the YoY values in no decimals and show in % sign.
-- Table: Orders

SELECT 
    YEAR(orderDate) AS Year,
    MONTHNAME(orderDate) AS Month,
    COUNT(*) AS Total_Orders,
    
    CONCAT(ROUND((COUNT(*) - LAG(COUNT(*)) OVER (ORDER BY YEAR(orderDate), MONTH(orderDate)))
            /LAG(COUNT(*)) OVER (ORDER BY YEAR(orderDate), MONTH(orderDate))* 100, 0),'%') AS `% Change`
FROM Orders
GROUP BY YEAR(orderDate), MONTH(orderDate), MONTHNAME(orderDate)
ORDER BY YEAR(orderDate), MONTH(orderDate);




