-- Q2. Find departments whose total employee salary exceeds 200000. Display department name, 
-- employee count, total salary and maximum salary. SELECT d.DeptName, 
COUNT(e.EmpID) AS Employee_Count, 
SUM(e.Salary) AS Total_Salary, 
MAX(e.Salary) AS Maximum_Salary 
FROM Department_d d 
INNER JOIN Employee_e e ON d.DeptID = e.DeptID 
GROUP BY d.DeptName 
HAVING SUM(e.Salary) > 200000 
ORDER BY Total_Salary DESC; 
