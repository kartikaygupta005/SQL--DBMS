-- Q5. Find employees whose total assigned project hours are greater than the average total project 
-- hours of all employees. Display employee name, department, and total hours.
SELECT e.EName, 
d.DeptName, 
SUM(w.HoursWorked) AS Total_Hours 
FROM Employee_e e 
JOIN Department_d d ON e.DeptID = d.DeptID 
JOIN Works_On_w w ON e.EmpID = w.EmpID 
GROUP BY e.EmpID, e.EName, d.DeptName 
HAVING SUM(w.HoursWorked) > 
(SELECT AVG(Total_Hours) 
FROM ( 
SELECT EmpID, SUM(HoursWorked) AS Total_Hours 
FROM Works_On_w 
GROUP BY EmpID 
)) 
ORDER BY Total_Hours DESC;
