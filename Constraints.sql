-- What are Constraints in SQL?
-- Constraints are rules applied to table columns to ensure valid data is stored in the database. They help maintain data accuracy, integrity, and reliability

-- 1. NOT NULL
-- Name VARCHAR(50) NOT NULL

-- 2. UNIQUE
-- Email VARCHAR(100) UNIQUE

-- 3. PRIMARY KEY
-- CustomerID INT PRIMARY KEY
  
-- 4. FOREIGN KEY
-- CustomerID INT,
-- FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)

-- 5. CHECK
-- Age INT CHECK (Age >= 18)

-- 6. DEFAULT
-- Status VARCHAR(10) DEFAULT 'Active'



-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- NOT NULL Constraint
-- Ensures that a column must always have a value — it cannot be NULL.

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);


-- CASCADE (used with FOREIGN KEY)
-- CASCADE is used with FOREIGN KEY to automatically apply changes in the child table when data is updated or deleted in the parent table.

-- ON DELETE CASCADE: Deletes child records if parent is deleted.
-- ON UPDATE CASCADE: Updates child records if parent key changes.

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE
);

-- Delete a customer
-- DELETE FROM Customers WHERE CustomerID = 1;

-- All Orders with CustomerID = 1 will also be automatically deleted.
