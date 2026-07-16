# Write your MySQL query statement below
WITH cte AS (
    SELECT score,
           DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
    FROM scores
)


SELECT *
FROM cte
