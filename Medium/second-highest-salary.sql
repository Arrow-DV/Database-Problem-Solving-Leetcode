# Write your MySQL query statement below
(SELECT distinct(salary) as SecondHighestSalary from 
Employee order by salary desc limit 1 OFFSET 1) UNION ( SELECT NULL) Limit 1;