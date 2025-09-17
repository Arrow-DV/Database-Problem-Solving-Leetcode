# Write your MySQL query statement below
SELECT user_id  as id , count(friend_id) as num FROM (
    SELECT requester_id AS user_id, accepter_id AS friend_id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS user_id, requester_id AS friend_id FROM RequestAccepted
) t
GROUP by id order by num desc limit 1;