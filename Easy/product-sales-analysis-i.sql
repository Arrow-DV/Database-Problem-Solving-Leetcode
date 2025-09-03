# Write your MySQL query statement below
SELECT product.product_name , sale.year , sale.price
from Sales sale
inner join Product product on sale.product_id = product.product_id;