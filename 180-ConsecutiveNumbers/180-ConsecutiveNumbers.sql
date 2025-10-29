-- Last updated: 29/10/2025, 18:00:30
# Write your MySQL query statement below
SELECT DISTINCT l1.num AS ConsecutiveNums FROM Logs l1
    JOIN Logs l2 ON l2.id = l1.id + 1
    JOIN Logs l3 ON l3.id = l2.id + 1
    WHERE l3.num = l2.num AND l2.num = l1.num; 