USE CLASSICMODELS;

-- Q3. Group By with Aggregation functions and Having clause, Date and Time functions

-- A. Using the OrderDetails table, identify the top 10 products (by productCode) with the highest total order quantity across all orders

SELECT productCode, SUM(quantityOrdered) AS total_ordered FROM ORDERDETAILS
GROUP BY productCode
ORDER BY  total_ordered DESC
LIMIT 10;

-- --B.Company wants to analyse payment frequency by month. Extract the month name from the payment date to count the total number of payments for each month and include only those months with a payment count exceeding 20. Sort the results by total number of payments in descending order.  (Refer Payments table).\
select monthname(paymentDate) as paymentMonth,
count(*) as totalPayments from payments
group by month(paymentDate),
monthname(paymentDate)
having count(*)>20 
order by totalpayments desc;
