1# Write your MySQL query statement below
2select v.customer_id, count(v.visit_id ) as count_no_trans 
3from Visits v
4left join Transactions t
5using(visit_id )
6where isnull(t.transaction_id)
7group by v.customer_id