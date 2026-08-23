-- Q4. For each department, display department name, number of projects, total project budget, and 
-- average project budget. Show departments having at least one project and total budget greater than 
-- 1000000. 
SELECT d.DeptName, 
COUNT(p.ProjectID) AS Project_Count, 
SUM(p.Budget) AS Total_Budget, 
ROUND(AVG(p.Budget), 2) AS Avg_Budget 
FROM Department_d d 
JOIN Project_p p ON d.DeptID = p.DeptID 
GROUP BY d.DeptName 
HAVING COUNT(p.ProjectID) >= 1 
AND SUM(p.Budget) > 1000000 
ORDER BY Total_Budget DESC;
