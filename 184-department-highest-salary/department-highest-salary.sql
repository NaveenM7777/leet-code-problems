# Write your MySQL query statement below
with Rankings as (
    select department.name as Department,employee.name as Employee,Employee.Salary as Salary,
    rank() over(partition by employee.departmentid order by salary desc) as sal_rank from employee
    inner join department
    on employee.departmentId=department.id
)
select Department,Employee,Salary from Rankings where sal_rank=1
