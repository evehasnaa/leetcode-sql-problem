1# Write your MySQL query statement below
2select s.student_id , s.student_name ,sub.subject_name ,
3count( e.student_id ) as attended_exams
4 from Students s
5cross join Subjects sub
6 left join Examinations e
7
8 on s.student_id  =e.student_id  
9 and sub.subject_name =e.subject_name 
10
11 group by s.student_id ,s.student_name ,sub.subject_name 
12 ORDER BY s.student_id, sub.subject_name;
13 
14