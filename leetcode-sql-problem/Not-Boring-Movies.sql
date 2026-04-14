1# Write your MySQL query statement below
2with checker as (
3select id, movie,
4    case when id%2 <> 0 then "odd"
5    else "Even"
6    end as "is_odd"
7,description ,rating 
8from Cinema
9)
10select id ,movie,description ,rating 
11from checker
12where is_odd="odd" and description <>'boring'
13order by rating desc