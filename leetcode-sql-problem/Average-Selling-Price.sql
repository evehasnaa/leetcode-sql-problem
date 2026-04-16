1# Write your MySQL query statement below
2select p.product_id ,
3case when sum(u.units)is null then 0 
4else 
5round(sum(p.price *u.units) /sum(units),2)  
6end average_price
7from prices p
8left join UnitsSold u
9on p.product_id =u.product_id 
10
11AND u.purchase_date BETWEEN p.start_date AND p.end_date
12group by p.product_id 