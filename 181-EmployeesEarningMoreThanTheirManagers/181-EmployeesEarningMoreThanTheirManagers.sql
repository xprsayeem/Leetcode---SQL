-- Last updated: 30/10/2025, 12:39:11
# Write your MySQL query statement below
SELECT 
    e.name AS Employee
FROM Employee e JOIN Employee m 
    ON e.managerId = m.id 
WHERE e.salary > m.salary;