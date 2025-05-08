USE Joins;

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

SELECT Name, Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);