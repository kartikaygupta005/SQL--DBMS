DDL COMMANDS...
CREAT TABLE student(
id INT ,
name VARCGAR(50)
);

ALTER TABLE student(
ADD department VARCHAR(50)
);

DROP TABLE student ; // removes the structure and data

TRUNCAT TABLE student; // keep structure only 

DML COMMANDDS...

INSERT INTO student(id , name , department)  // INSERT A NEW ROW
VALUE(1 , 'KARTIKAY' , ECE);

UPDATE student          // update the existing row 
SET name = 'abhinav'
where id = 1 ; 


DELETE FROM student    // delete whole row 
where id = 1 ; 



DQL COMMANDS .... // USED TO RETRIEVE THE DATA
SELECT * 
FROM student ;


DCL COMMANDS...  // USED TO FRANT AND REVOKE THE ACCESS OF A USER

GRANT SELECT ON student FROM user1 ; // grants access

REVOKE SELECT ON student FROM user1 ; // revoke the access




TCL COMMANDS ... // USED TO CONTROL THE TRANSACTION

INSERT INTO student 
VALUES(2 , 'HELLO' , 'ECE' ) '
COMMIT                           // MAKES SURE THE CHANGES ARE PERMANENT


UPDATE student 
SET name = 'hehe'
WHERE  id = 1;
ROLLBACK                           // MAKES THE UPDATE UNDONE



SAVEPOINT SP1 ; 
UPDATE student 
SET name = 'OYEOOO'
WHERE  id = 1;
ROLLBACK TO sp1 ;                 //all the changes made after sp1 are undone



TRANSACTION COMMAND ....

UPDATE ACCOUNT
SET BALANCE = BALANCE -1000
WHERE ID = 1;
UPDATE ACCOUNT
SET BALANCE = BALANCE + 1000
WHERE ID = 2;




Nth highest salary using dense rank 
SELECT *
FROM(
     SELECT name , salary , DENSE_RANK() OVER (ORDER BY salary DESC) AS RNK 
      FROM employee 
    )
WHERE RNK = n ; 



Duplicate names in table
SELECT name , COUNT(*)
FROM Employee
GROUP BY name
HAVING COUNT(*) > 1 ; 


highest salary in each department
SELECT department_id , MAX(Salary) AS highest_salary 
From employee
Group By department_id
ORDER BY highest_salary DESC
// LIMIT 1 ;




















