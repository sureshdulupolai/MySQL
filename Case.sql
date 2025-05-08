USE Joins;

CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT
);


INSERT INTO Students (ID, Name, Marks) VALUES
(1, 'Suresh', 85),
(2, 'Ramesh', 40),
(3, 'Raj', 65),
(4, 'Naresh', 90),
(5, 'Dinesh', 30);


SELECT Name, Marks,
CASE
    WHEN Marks >= 75 THEN 'Distinction'
    WHEN Marks >= 50 THEN 'Pass'
    ELSE 'Fail'
END AS Result
FROM Students;


-- 
ALTER TABLE Students ADD Result VARCHAR(20);

UPDATE Students
SET Result = CASE
    WHEN Marks >= 75 THEN 'Distinction'
    WHEN Marks >= 50 THEN 'Pass'
    ELSE 'Fail'
END;

SELECT * FROM Students;

-- CASE in SELECT helps show dynamic/custom values based on conditions.
-- CASE in UPDATE helps update records conditionally.