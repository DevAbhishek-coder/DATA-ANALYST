USE CLASSICMODELS;
-- Q2. CASE STATEMENTS for Segmentation
-- A. Using a CASE statement, segment customers into three categories based on their country:(Refer Customers table)
--                         "North America" for customers from USA or Canada
--                         "Europe" for customers from UK, France, or Germany
--                         "Other" for all remaining countries
--      Select the customerNumber, customerName, and the assigned region as "CustomerSegment"

SELECT customerNumber, customerName,
case 
when country IN ('USA' , 'CANADA') THEN 'NORTH AMERICA'
WHEN country IN ('UK' 'FRANCE', 'GERMANY') THEN 'EUROPE'
ELSE 'OTHER'
END AS CUSTOMERSEGMENT
FROM CUSTOMERS;


