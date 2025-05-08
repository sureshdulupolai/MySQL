-- Create Database
CREATE DATABASE dbname;

-- Use Database
USE dbname;

-- Create Table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert Data
INSERT INTO users (name, email) VALUES ('Suresh', 'suresh@example.com');

-- Select Data
SELECT * FROM users;

-- Where Clause
SELECT * FROM users WHERE id = 1;

-- Update Data
UPDATE users SET name = 'Suresh Polai' WHERE id = 1;

-- Delete Data
DELETE FROM users WHERE id = 1;

-- Order By
SELECT * FROM users ORDER BY name ASC;

-- Limit
SELECT * FROM users LIMIT 5;

-- Between
SELECT * FROM users WHERE id BETWEEN 1 AND 10;

-- IN Clause
SELECT * FROM users WHERE id IN (1, 2, 5);

-- LIKE Operator
SELECT * FROM users WHERE name LIKE '%sh';

-- Aliases
SELECT name AS Username FROM users;

-- Aggregate Functions
SELECT COUNT(*), MAX(id), MIN(id), AVG(id), SUM(id) FROM users;

-- GROUP BY
SELECT COUNT(id), name FROM users GROUP BY name;


-- JOINs
-- INNER JOIN
SELECT u.name, o.amount
FROM users u
JOIN orders o ON u.id = o.user_id;

-- LEFT JOIN
SELECT u.name, o.amount
FROM users u
LEFT JOIN orders o ON u.id = o.user_id;

-- RIGHT JOIN
SELECT u.name, o.amount
FROM users u
RIGHT JOIN orders o ON u.id = o.user_id;


-- Subqueries
SELECT name FROM users WHERE id = (SELECT MAX(id) FROM users);

-- UNION
SELECT name FROM users
UNION
SELECT name FROM admins;

-- CASE Statement
SELECT name,
CASE 
  WHEN id = 1 THEN 'Admin'
  ELSE 'User'
END AS role
FROM users;


-- Stored Procedures
DELIMITER //
CREATE PROCEDURE GetUsers()
BEGIN
   SELECT * FROM users;
END;
//
DELIMITER ;

CALL GetUsers();


-- Triggers
CREATE TRIGGER before_insert_user
BEFORE INSERT ON users
FOR EACH ROW
SET NEW.name = UPPER(NEW.name);


-- Views
CREATE VIEW user_view AS
SELECT id, name FROM users;

SELECT * FROM user_view;


-- Transactions
START TRANSACTION;
UPDATE users SET name = 'X' WHERE id = 1;
DELETE FROM users WHERE id = 2;
COMMIT;