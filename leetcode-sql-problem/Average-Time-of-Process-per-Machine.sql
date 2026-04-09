1# Write your MySQL query statement below
2select a.machine_id ,round(avg(ac.timestamp-a.timestamp),3)as processing_time 
3from Activity a
4join Activity ac
5on a.machine_id=ac.machine_id     and
6a.process_id =ac.process_id and      
7 a.activity_type ='start' and ac.activity_type ='end'
8group by a.machine_id     