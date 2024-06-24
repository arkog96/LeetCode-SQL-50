# Write your MySQL query statement below
SELECT class
FROM Courses 
GROUP By class
HAVING COUNT(class) >= 5; 