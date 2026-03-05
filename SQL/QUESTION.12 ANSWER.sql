USE CLASSICMODELS;
-- Q.13-- ERROR HANDLING in SQL
-- Create the table Emp_EH. Below are its fields.
-- ●EmpID (Primary Key)
-- ●EmpName
-- ●EmailAddress
-- Create a procedure to accept the values for the columns in Emp_EH. Handle the error using exception handling concept. Show the message as “Error occurred” in case of anything wrong.

#CREATING TABLE

CREATE TABLE Emp_EH (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    EmailAddress VARCHAR(100));

#CREATING PROCEDURE
DELIMITER //

CREATE PROCEDURE Insert_Emp_EH(
    IN p_EmpID INT,
    IN p_EmpName VARCHAR(100),
    IN p_EmailAddress VARCHAR(100)
)
BEGIN

    -- Error handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Error occurred' AS Message;
    END;

    -- Insert statement
    INSERT INTO Emp_EH (EmpID, EmpName, EmailAddress)
    VALUES (p_EmpID, p_EmpName, p_EmailAddress);

    SELECT 'Record Inserted Successfully' AS Message;

END //



CALL Insert_Emp_EH(1, 'Abhishek', 'abc@gmail.com');  #FOR SUCCEFUL INSERTION
CALL Insert_Emp_EH(1, 'RAHUL', 'Rbc@gmail.com');    #ERROR SHOWING FOR WRONG ENTRY






 


