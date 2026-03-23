# Intuition
The goal is to identify emails that appear more than once in the Person table. My initial thought was to group the data by the email column and then filter those groups based on their occurrence count.

# Approach
I used a Subquery (Nested Query) approach to solve this:

Inner Query: Group the records by the email column and use the HAVING clause with COUNT(email) >= 2 to isolate only the emails that are duplicated.

Outer Query: Select the email column from the result of the inner query.

Alias: Assigned an alias as Email to the subquery result, which is a requirement in MySQL when selecting from a subquery.

# ComplexityTime complexity: $O(n)$, where $n$ is the number of rows in the table (due to grouping).Space complexity: $O(n)$ in the worst case to store the grouped results.


# Code
```mysql []
# Write your MySQL query statement below
select  email       
from  (
select  email
from Person
group by email 
having count(email) >=2 
)  as Email   
```