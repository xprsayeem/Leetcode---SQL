-- Last updated: 30/10/2025, 12:39:14
# Write your MySQL query statement below
SELECT name AS Customers 
    from Customers 
    WHERE Id not in (SELECT customerId from Orders)