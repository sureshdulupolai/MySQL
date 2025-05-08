-- 1. 🔁 Stored Procedure
-- Changing the delimiter because stored procedures contain multiple statements
DELIMITER //

-- Creating a stored procedure named GetStudentDetails
CREATE PROCEDURE GetStudentDetails()
BEGIN
   -- This SELECT query fetches all rows from the Students table
   SELECT * FROM Students;
END //

-- Resetting the delimiter back to default
DELIMITER ;

-- Calling the stored procedure to execute the logic
CALL GetStudentDetails();


-- DELIMITER // is needed because stored procedures use multiple SQL statements.
-- BEGIN ... END wraps the logic.
-- CALL GetStudentDetails() runs the procedure.

-- ---------------------------------------------------------------------------------------------------------------------------

-- 2. ⚡ Trigger
-- Creating a trigger that runs AFTER a new record is inserted into Students
CREATE TRIGGER after_insert_student
AFTER INSERT ON Students
FOR EACH ROW
BEGIN
   -- Insert a log message into AuditLog when a student is added
   INSERT INTO AuditLog (message)
   VALUES (CONCAT('Inserted student: ', NEW.Name))
END;


-- AFTER INSERT ON Students: The trigger activates after inserting a row.
-- NEW.Name: Accesses the name of the newly inserted row.
-- Inserts a message into AuditLog table for tracking inserts.


-- -----------------------------------------------------------------------------------------------------------------------------

-- 3. 🔄 Cursor
-- Changing the delimiter to allow for multiline procedure
DELIMITER //

-- Creating a stored procedure to loop through student names
CREATE PROCEDURE ShowNames()
BEGIN
   -- Declare a flag for end of data
   DECLARE done INT DEFAULT FALSE;

   -- Declare a variable to hold student name
   DECLARE studentName VARCHAR(50);

   -- Declare a cursor to select all student names
   DECLARE cur CURSOR FOR SELECT Name FROM Students;

   -- Handle the situation when no more data is available
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

   -- Open the cursor to start reading data
   OPEN cur;

   -- Start loop to go row by row
   read_loop: LOOP
     -- Fetch the next student name into studentName variable
     FETCH cur INTO studentName;

     -- Exit loop when no more rows
     IF done THEN
       LEAVE read_loop;
     END IF;

     -- Print student name (or perform logic here)
     SELECT studentName;
   END LOOP;

   -- Close the cursor to free memory
   CLOSE cur;
END //

-- Reset delimiter
DELIMITER ;

-- Call the procedure to run the cursor loop
CALL ShowNames();


-- Cursors are used for row-by-row processing.
-- FETCH gets each row one at a time.
-- IF done THEN LEAVE exits the loop when no more data.