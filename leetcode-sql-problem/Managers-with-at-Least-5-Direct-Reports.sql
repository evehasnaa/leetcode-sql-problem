1# Write your MySQL query statement below
2/*with c as (
3    select e.managerId ,count(e.managerId )
4from Employee e
5cross join Employee em
6
7group by e.managerId 
8having count(e.managerId ) >5
9)
10select Employee.name
11from  c 
12join Employee 
13on c.managerId =Employee.managerId 
14and Employee.name=c.name  */
15/*
16select name
17from Employee
18
19where Id   in (
20
21select managerId  
22from Employee 
23group by managerId 
24having count(managerId ) >=5
25)
26*/
27select e.name
28from Employee e
29join Employee em
30on e.id =em.managerId 
31GROUP BY e.id, e.name
32HAVING COUNT(em.id) >= 5;