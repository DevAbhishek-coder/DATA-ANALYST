-- Q11.Subqueries and their applications
use classicmodels;
-- A. Find out how many product lines are there for which the buy price value is greater than the average of buy price value. Show the output as product line and its count.SELECT productLine, COUNT(*) AS product_count
SELECT productLine, COUNT(*) AS product_count
FROM products
WHERE buyPrice > (
        SELECT AVG(buyPrice)
        FROM products
)
GROUP BY productLine;
