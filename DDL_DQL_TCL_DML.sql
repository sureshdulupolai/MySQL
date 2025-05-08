-- 1. DDL – Data Definition Language
-- Used to define or change structure of database objects like tables.

-- Does not manipulate data directly.

-- Changes are auto-committed.

-- 🔹 Commands:
-- CREATE, ALTER, DROP, TRUNCATE

-- -------------------------------------------------------------------------------------------------
-- 2. DML – Data Manipulation Language
-- Used to manipulate data inside tables.

-- Changes can be rolled back (not auto-committed).

-- 🔹 Commands:
-- INSERT, UPDATE, DELETE

-- --------------------------------------------------------------------------------------------------
-- 3. DQL – Data Query Language
-- Used to fetch data from the database.

-- The only major command is SELECT.

-- 🔹 Command:
-- SELECT

-- --------------------------------------------------------------------------------------------------
-- 4. TCL – Transaction Control Language
-- Manages transactions in a database.

-- Used with DML to commit or rollback changes.

-- 🔹 Commands:
-- COMMIT, ROLLBACK, SAVEPOINT

-- BEGIN;
-- UPDATE Students SET Name = 'Raj' WHERE ID = 1;
-- ROLLBACK;  -- Undo the change
