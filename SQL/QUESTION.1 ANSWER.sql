use classicmodels;
-- Q.1:- Q1. SELECT clause with WHERE, AND, DISTINCT, Wild Card (LIKE)
-- A.Fetch the employee number, first name and last name of those employees who are working as Sales Rep reporting to employee with employeenumber 1102 (Refer employee table)

select employeeNumber, lastName,firstName from employees
where reportsto = 1102 and jobTitle = "Sales Rep";


-- B.Show the unique productline values containing the word cars at the end from the products table.

SELECT distinct(productLine) FROM PRODUCTS
where productline like  "%Cars%";

