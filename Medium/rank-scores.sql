# Write your MySQL query statement below
SELECT score , DENSE_RANK() OVER (Order by score desc ) as `rank` from Scores 
ORDER BY score  desc;