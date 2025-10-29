-- Last updated: 29/10/2025, 17:49:40
# Write your MySQL query statement below
SELECT score,
    DENSE_RANK() OVER(ORDER BY score DESC) as 'rank'
    FROM Scores