use classicmodels;

-- Q7. DDL Commands: Create, Alter, Rename
-- a. Create table facility. Add the below fields into it.
-- ●Facility_ID
-- ●Name
-- ●State
-- ●Country

-- Answer:-
create table facility(Facility_ID int not null , 
Name varchar(100),
 State Varchar(100) , 
 Country varchar(100));

-- i) Alter the table by adding the primary key and auto increment to Facility_ID column.
-- Answer:-

ALTER TABLE facility
MODIFY Facility_ID INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (Facility_ID);


-- ii) Add a new column city after name with data type as varchar which should not accept any null values.
-- Answer:-

ALTER TABLE facility
ADD City VARCHAR(100) NOT NULL
AFTER Name;

SELECT * FROM FACILITY;
desc FACILITY;
