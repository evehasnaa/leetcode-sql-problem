1# Write your MySQL query statement below
2select w.id 
3from Weather w
4cross join Weather we
5
6where DATEDIFF(w.recordDate  ,we.recordDate )=1
7and
8w.temperature >we.temperature 