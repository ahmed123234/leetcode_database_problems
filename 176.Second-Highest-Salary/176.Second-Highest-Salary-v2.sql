select ifnull((
   select distinct salary  from Employee 
order by salary desc
limit 1, 1), null) as SecondHighestSalary;


--OR

 select max(salary) as SecondHighestSalary from Employee
 where salary < (select max(salary) from Employee)

