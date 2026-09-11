QUESTION 1 But Q1 asks for two additional conditions:

Show only departments having at least 3 employees AND average salary greater than 60000.


SELECT D.DEPTNAME,
       COUNT(E.EMPID) AS EMPLOYEE_COUNT,
       ROUND(AVG(E.SALARY), 2) AS AVERAGE_SALARY
FROM EMPLOYEE_E E
JOIN DEPARTMENT_D D
ON E.DEPTID = D.DEPTID
GROUP BY D.DEPTNAME
HAVING COUNT(E.EMPID) >= 3
   AND AVG(E.SALARY) > 60000
ORDER BY AVERAGE_SALARY DESC;



QIESTION 2 : Find departments whose total employee salary exceeds 200000. Display:

Department name
Employee count
Total salary
Maximum salary


SELECT D.DEPTNAME ,COUNT(E.EMPID) AS EMPLOYEE_COUNT, SUM(E.SALARY) , MAX(E.SALARY)
FROM EMPLOYEE_E E JOIN DEPARTMENT_D D
ON E.DEPTID = D.DEPTID
GROUP BY D.DEPTNAME
HAVING SUM(E.SALARY) > 200000;

Q3. Find employees whose salary is greater than 50,000.


SELECT E.NAME
FROM EMPLOYEE E
WHERE E.SALARY > 50000;


Q4️⃣

Find the department-wise average salary of employees, but display only departments whose average salary is greater than 50,000.

SELECT E.DEPARTMENT , AVG(E.SALARY)
FROM EMPLOYEE E 
GROUP BY DEPARTMENT
HAVING AVG(E.SALARY) > 50000;


Q5️⃣

Using the same EMPLOYEE table:

Find the department with the highest total salary.

SELECT E.DEPARTMENT , SUM(E.SALARY)
FROM EMPLOYEE E
GROUP BY E.DEPARTMENT
ORDER BY SUM(E.SALARY)DESC
LIMIT 1 ;


🔥 Q6

Find the names of employees who earn more than the average salary of all employees.

SELECT E.NAME
FROM EMPLOYEE E
WHERE E.SALARY > (SELECT AVG(E2.SALARY) FROM EMPLOYEE E2);



Q7Find the second-highest salary from the EMPLOYEE table.


SELECT MAX(SALARY)
FROM EMPLOYEE
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEE);


Q8 Find the names of employees who have the second-highest salary.

SELECT NAME
FROM EMPLOYEE
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM EMPLOYEE
    WHERE SALARY < (
        SELECT MAX(SALARY)
        FROM EMPLOYEE
    )
);








