select Employee.name as name,Bonus.bonus as bonus from employee
left join bonus
on employee.empId=bonus.empId
where bonus<1000 or bonus is null