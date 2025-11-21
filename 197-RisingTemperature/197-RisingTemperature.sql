-- Last updated: 21/11/2025, 02:38:49
# Write your MySQL query statement below
# Using LAG & DATE_SUB
SELECT id
FROM (
    SELECT
        id,
        recordDate,
        temperature,
        LAG(recordDate) OVER(ORDER BY recordDate) AS prevDate,
        LAG(temperature) OVER(ORDER BY recordDate) AS prevTemp
    FROM Weather
) w
WHERE prevDate = DATE_SUB(recordDate, INTERVAL 1 DAY)
AND temperature > prevTemp;