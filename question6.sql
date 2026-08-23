-- Q6. For every department, calculate the total project hours contributed by its employees. Display 
-- departments whose employees have collectively worked more than 300 hours. 
SELECT d.DeptName, 
COUNT(DISTINCT p.ProjectID) AS Project_Count, 
SUM(w.HoursWorked) AS Total_Project_Hours 
FROM Department_d d 
JOIN Project_p p ON d.DeptID = p.DeptID 
JOIN Works_On_w w ON p.ProjectID = w.ProjectID 
GROUP BY d.DeptName 
HAVING SUM(w.HoursWorked) > 300 
ORDER BY Total_Project_Hours DESC; 
