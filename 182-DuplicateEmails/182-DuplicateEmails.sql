-- Last updated: 30/10/2025, 12:39:12
# Write your MySQL query statement below
SELECT email from Person group by email having COUNT(email) > 1;