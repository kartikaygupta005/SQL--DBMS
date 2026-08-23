-- Q3. Display project name, number of employees assigned, and total hours worked. Show only 
-- projects having more than one employee and total hours above 250. 
SELECT p.ProjectName, 
COUNT(w.EmpID) AS Employee_Count, 
SUM(w.HoursWorked) AS Total_Hours 
FROM Project_p p 
JOIN Works_On_w w ON p.ProjectID = w.ProjectID 
GROUP BY p.ProjectName 
HAVING COUNT(w.EmpID) > 1 
AND SUM(w.HoursWorked) > 250 
ORDER BY Total_Hours DESC;
