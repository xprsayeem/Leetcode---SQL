-- Last updated: 29/10/2025, 17:49:41
# Write your MySQL query statement below
# Find the Highest Salary in the table, Search for the highest salary which doesnt equal that first salary we found.
SELECT MAX(salary) AS SecondHighestSalary from Employee WHERE salary <> (SELECT MAX(salary) from Employee)

