-- Last updated: 29/10/2025, 16:55:41
# Write your MySQL query statement below
SELECT firstName, lastName, city, state 
    FROM Person n LEFT JOIN Address a
    ON n.personId = a.personId  