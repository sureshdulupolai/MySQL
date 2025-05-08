USE Joins;

-- What is a View?
-- A View is a virtual table based on a SQL query.
-- It does not store data physically; it fetches data from original tables.
-- Used to simplify complex queries, secure data access, or customize output.

-- Syntax
-- CREATE VIEW view_name AS
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;


CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees (ID, Name, Department, Salary) VALUES
(1, 'Suresh', 'IT', 25000),
(2, 'Ramesh', 'HR', 30000),
(3, 'Naresh', 'IT', 40000),
(4, 'Dinesh', 'Finance', 28000),
(5, 'Raj', 'IT', 35000);


CREATE VIEW IT_Employees AS
SELECT Name, Salary
FROM Employees
WHERE Department = 'IT';

SELECT * FROM IT_Employees;

-- Update
UPDATE IT_Employees
SET Salary = Salary + 5000
WHERE Name = 'Suresh';

-- Views are virtual tables, created from a SELECT query.
-- They help in simplifying queries and restricting access to sensitive data.
-- You can select, filter, and sometimes update data via views.