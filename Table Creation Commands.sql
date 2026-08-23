CREATE TABLE Department_D (     DeptID NUMBER(4) PRIMARY KEY, 
DeptName VARCHAR2(30) NOT NULL UNIQUE, 
Location VARCHAR2(30)); 
CREATE TABLE Employee_E ( EmpID NUMBER(5) PRIMARY KEY, 
EName VARCHAR2(40) NOT NULL, 
Job VARCHAR2(30), 
Salary NUMBER(10,2) CHECK (Salary > 0), 
DeptID NUMBER(4), 
ManagerID NUMBER(5), 
CONSTRAINT fk_emp_dept FOREIGN KEY (DeptID) 
REFERENCES Department_D(DeptID), 
CONSTRAINT fk_emp_manager FOREIGN KEY (ManagerID) 
REFERENCES Employee_E(EmpID)); 
CREATE TABLE Project_P ( ProjectID NUMBER(5) PRIMARY KEY, 
ProjectName VARCHAR2(50) NOT NULL, 
Budget NUMBER(12,2) CHECK (Budget > 0), 
DeptID NUMBER(4), 
CONSTRAINT fk_project_dept FOREIGN KEY (DeptID) 
REFERENCES Department_D(DeptID) ); 
CREATE TABLE Works_On_W ( EmpID NUMBER(5), 
ProjectID NUMBER(5), 
HoursWorked NUMBER(6,2) CHECK (HoursWorked >= 0), 
CONSTRAINT pk_works_on PRIMARY KEY (EmpID, ProjectID), 
CONSTRAINT fk_works_emp FOREIGN KEY (EmpID) 
REFERENCES Employee_E(EmpID), 
CONSTRAINT fk_works_project FOREIGN KEY (ProjectID) 
REFERENCES Project_P(ProjectID) );
