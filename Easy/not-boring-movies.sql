# Write your MySQL query statement below
select * from Cinema where MOD(id,2) <> 0 and description not like "bo%" order by rating desc;