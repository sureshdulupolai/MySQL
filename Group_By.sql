USE Joins;

-- GROUP BY groups rows based on one or more columns.
-- It's typically used with aggregate functions to summarize data (e.g., total sales per product, average salary per department).

-- Get total amount per product
SELECT Product, SUM(Amount) AS Total_Amount
FROM Sales
GROUP BY Product;


-- WHERE & GROUP BY

-- SELECT column1, aggregate_function(column2)
-- FROM table_name
-- WHERE condition
-- GROUP BY column1;

-- HAVING & GROUP BY

-- Get products with total amount > 50
-- SELECT Product, SUM(Amount) AS Total_Amount
-- FROM Sales
-- GROUP BY Product
-- HAVING SUM(Amount) > 50;

-- GROUP BY WITH MULTIPLE COLUMN 

-- Get total amount for each product and each ID
-- SELECT ID, Product, SUM(Amount) AS Total_Amount
-- FROM Sales
-- GROUP BY ID, Product;