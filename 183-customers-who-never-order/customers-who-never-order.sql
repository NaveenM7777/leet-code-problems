# Write your MySQL query statement below
select customers.name as customers from customers
where id not in (
    select customerId from orders
)