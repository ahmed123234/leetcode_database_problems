
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N=N-1;
RETURN (
# Write your MySQL query statement below.
SELECT ifnull( (select DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT N, 1),
	null)
);
end

