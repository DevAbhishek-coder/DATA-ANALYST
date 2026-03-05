-- Q5. JOINS
-- a. List the top 5 countries (by order count) that Classic Models ships to. (Use the Customers and Orders tables)

USE CLASSICMODELS;

SELECT C.country,COUNT(O.orderNumber) as order_count FROM CUSTOMERS c
inner join orders o
on c.customerNumber = o.customerNumber
group by country
order by order_count desc
limit 5;

