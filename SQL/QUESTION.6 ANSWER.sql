-- Q6. SELF JOIN
-- a. Create a table project with below fields.


-- ●EmployeeID : integer set as the PRIMARY KEY and AUTO_INCREMENT.
-- ●FullName: varchar(50) with no null values
-- ●Gender : Values should be only ‘Male’  or ‘Female’
-- ●ManagerID: integer 

USE CLASSICMODELS;
create table project(EmployeeID int primary key auto_increment, FullName varchar(50) not null, Gender varchar(20), ManagerID int);


#INSERTING VALUES INTO THE TABLE

INSERT INTO project (EmployeeID, FullName, Gender, ManagerID) VALUES
(1, 'Pranaya',  'Male',   3),
(2, 'Priyanka', 'Female', 1),
(3, 'Preety',   'Female', NULL),
(4, 'Anurag',   'Male',   1),
(5, 'Sambit',   'Male',   1),
(6, 'Rajesh',   'Male',   3),
(7, 'Hina',     'Female', 3);

#PERFORMING TASK;


SELECT 
    m.FullName AS `Manager Name`,
    e.FullName AS `Emp Name`
FROM project e
JOIN project m
    ON e.ManagerID = m.EmployeeID
ORDER BY m.EmployeeID, e.EmployeeID;



