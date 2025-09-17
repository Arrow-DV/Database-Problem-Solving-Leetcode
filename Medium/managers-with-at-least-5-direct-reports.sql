SELECT emp1.name from Employee emp1 join 
Employee emp2 on emp1.id = emp2.managerId
group by emp1.id having COUNT(*) >= 5; 
/* REPLACE COUNT(*) with COUNT(emp2.id) or any value , the point is to count the results of employees 
with same managerId then print the Manager */