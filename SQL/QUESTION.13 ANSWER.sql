-- Q13. TRIGGERS
-- Create the table Emp_BIT. Add below fields in it.
-- ●Name
-- ●Occupation
-- ●Working_date
-- ●Working_hours

-- Insert the data as shown in below query.
-- INSERT INTO Emp_BIT VALUES
-- ('Robin', 'Scientist', '2020-10-04', 12),  
-- ('Warner', 'Engineer', '2020-10-04', 10),  
-- ('Peter', 'Actor', '2020-10-04', 13),  
-- ('Marco', 'Doctor', '2020-10-04', 14),  
-- ('Brayden', 'Teacher', '2020-10-04', 12),  
-- ('Antonio', 'Business', '2020-10-04', 11);  
--  
-- Create before insert trigger to make sure any new value of Working_hours, if it is negative, then it should be inserted as positive.

-- ANSWER:-

-- STEP:-1= TABLE CREATINO
USE CLASSICMODELS;
CREATE TABLE Emp_BIT (
    Name VARCHAR(50),
    Occupation VARCHAR(50),
    Working_date DATE,
    Working_hours INT
);

-- STEP-2:- INSERTING VALUES
INSERT INTO Emp_BIT VALUES
('Robin', 'Scientist', '2020-10-04', 12),
('Warner', 'Engineer', '2020-10-04', 10),
('Peter', 'Actor', '2020-10-04', 13),
('Marco', 'Doctor', '2020-10-04', 14),
('Brayden', 'Teacher', '2020-10-04', 12),
('Antonio', 'Business', '2020-10-04', 11);

-- STEP-3: CREATING TRIGGER
DELIMITER //

CREATE TRIGGER before_insert_emp_bit
BEFORE INSERT ON Emp_BIT
FOR EACH ROW
BEGIN
    IF NEW.Working_hours < 0 THEN
        SET NEW.Working_hours = ABS(NEW.Working_hours);
    END IF;
END //

DELIMITER ;


#TESTING TRIGGER

INSERT INTO Emp_BIT VALUES ('John', 'Tester', '2020-10-05', -8);
SELECT * FROM Emp_BIT;