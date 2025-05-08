USE Joins;

CREATE TABLE Sales (
    ID INT PRIMARY KEY,
    Product VARCHAR(50),
    Amount INT
);

INSERT INTO Sales (ID, Product, Amount) VALUES
(1, 'Pen', 10),
(2, 'Book', 50),
(3, 'Bag', 200),
(4, 'Notebook', 80),
(5, 'Pencil', 5);


-- 1. Count total sales
SELECT COUNT(*) AS Total_Sales FROM Sales;

-- 2. Total amount sold
SELECT SUM(Amount) AS Total_Amount FROM Sales;

-- 3. Average amount per product
SELECT AVG(Amount) AS Average_Amount FROM Sales;

-- 4. Highest product amount
SELECT MAX(Amount) AS Max_Amount FROM Sales;

-- 5. Lowest product amount
SELECT MIN(Amount) AS Min_Amount FROM Sales;


-- ------------------------------------------------------------------------------------------------------
SELECT
    (
		SELECT COUNT(*) 
        FROM Sales
    ) AS Total_Sales,
    
    (
		SELECT SUM(Amount) 
        FROM Sales
    ) AS Total_Amount,
    
    (
		SELECT AVG(Amount) 
        FROM Sales
	) AS Average_Amount,
    
    (
		SELECT MAX(Amount) 
        FROM Sales
	) AS Max_Amount,
    (
		SELECT MIN(Amount) 
        FROM Sales
	) AS Min_Amount;
    


-- --------------------------------------------------------------------------------------------------------
-- Use WHERE to filter rows before aggregation
-- Use HAVING to filter results after aggregation (GROUP BY).


-- WHERE
-- Show only sales with Amount > 30
SELECT * FROM Sales
WHERE Amount > 30;


-- HAVING
-- Show total amount per product, only where total > 50
SELECT Product, SUM(Amount) AS Total_Amount
FROM Sales
GROUP BY Product
HAVING SUM(Amount) > 50;

