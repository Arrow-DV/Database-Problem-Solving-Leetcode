# Write your MySQL query statement below
SELECT department.name as Department , employee.name as Employee , employee.salary as Salary
from Employee employee
join Department department
on employee.departmentId = department.id
WHERE (employee.departmentId, employee.salary) IN (
    SELECT departmentId, MAX(salary)
    FROM Employee
    GROUP BY departmentId
)
ORDER BY Department, Employee;