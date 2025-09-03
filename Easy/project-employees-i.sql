# Write your MySQL query statement below
SELECT project.project_id , ROUND(AVG(
    employee.experience_years 

) ,2)as average_years   from Project project   
join Employee employee on project.employee_id = employee.employee_id
group by project_id;
