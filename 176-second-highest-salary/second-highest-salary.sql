WITH cte AS (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM Employee
)

SELECT (
    SELECT salary
    FROM cte
    WHERE salary_rank = 2
    LIMIT 1
) AS SecondHighestSalary;