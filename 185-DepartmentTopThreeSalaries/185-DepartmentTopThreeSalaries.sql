-- Last updated: 21/11/2025, 02:38:51
# Write your MySQL query statement below
WITH sranked AS 
    (SELECT name, salary, departmentId, 
        DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS srank
            FROM Employee)

#Select with #1 salary rank, Join with Department table
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
    FROM sranked e JOIN Department d
    ON d.id = e.departmentId
    WHERE srank <= 3