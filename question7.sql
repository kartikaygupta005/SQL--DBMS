-- Q7. Find managers whose direct reports have an average salary greater than 55000. Display 
-- manager name, number of direct reports, and average team salary. 
SELECT m.EName AS Manager_Name, 
COUNT(e.EmpID) AS Team_Size, 
ROUND(AVG(e.Salary), 2) AS Avg_Team_Salary 
FROM Employee_e m 
JOIN Employee_e e ON m.EmpID = e.ManagerID 
GROUP BY m.EmpID, m.EName 
HAVING AVG(e.Salary) > 55000 
ORDER BY Avg_Team_Salary DESC;
