1# Write your MySQL query statement below
2select product_name ,year  ,price
3from Sales s
4left join Product p
5on  s.product_id =p.product_id 
6