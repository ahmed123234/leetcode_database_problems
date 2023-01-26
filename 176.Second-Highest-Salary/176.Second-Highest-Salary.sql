select  
if (count(salary) = 2, min(salary), null) as SecondHighestSalary 
 from
(select distinct salary from employee 
order by salary desc
limit 2) as a;
