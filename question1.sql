-- Q1. Display each department name, number of employees, and average salary(roundoff it till 2 
-- decimal places). Show only departments having at least 3 employees and an average salary greater 
-- than 60000. 
SELECT d.DeptName, 
COUNT(e.EmpID) AS Employee_Count, 
ROUND(AVG(e.Salary), 2) AS Avg_Salary 
FROM Department_d d 
JOIN Employee_e e ON d.DeptID = e.DeptID 
GROUP BY d.DeptName 
HAVING COUNT(e.EmpID) >= 3 
AND AVG(e.Salary) > 60000 
ORDER BY Avg_Salary DESC;
