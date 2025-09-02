# Write your MySQL query statement below
select x ,y ,z ,CASE 
    when x+y > z  and z+x > y and z+y >x
        THEN 'Yes'
        ELSE 'No'
END AS 'triangle'
from Triangle;