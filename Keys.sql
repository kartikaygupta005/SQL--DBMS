-- Primary key 
-- A Primary Key is a column (or combination of columns) that uniquely identifies each row in a table.

-- Example:
--A primary key also cannot contain NULL.

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

 Candidate Key

-- A Candidate Key is a column (or combination of columns) that:

-- Uniquely identifies each row.
-- Cannot contain unnecessary attributes — it is a minimal key.
-- Example

-- Suppose we have:

-- employee_id	email	phone	name
-- 101	rahul@gmail.com	9876	Rahul
-- 102	amit@gmail.com	8765	Amit
-- 103	raj@gmail.com	7654	Raj

-- Assume:

-- employee_id is unique
-- email is unique
-- phone is unique

-- Then all three can uniquely identify an employee:

-- employee_id → Candidate Key
-- email       → Candidate Key
-- phone       → Candidate Key

-- We have 3 candidate keys.

-- Then what is Primary Key?

-- Out of all candidate keys, we choose one as the Primary Key.

-- For example:

-- Candidate Keys:
--     ↓
-- employee_id
-- email
-- phone

-- Choose employee_id
--        ↓
-- Primary Key

-- The remaining candidate keys are called Alternate Keys.

-- So:

-- Candidate Keys
--       ↓
--  ┌────┼─────┐
--  ↓    ↓     ↓
-- ID   Email  Phone
--  ↓
-- Primary Key

Super Key

-- A Super Key is any set of one or more columns that can uniquely identify a row in a table.

Assume Student_ID and Email are both unique.

-- Then these are Super Keys:

-- Student_ID
-- Email
-- Student_ID + Name
-- Email + Name
-- Student_ID + Email
-- Student_ID + Email + Name

               SUPER KEYS
          /      |       \
         /       |        \
Student_ID     Email    ID + Name
    ↓            ↓
Candidate      Candidate
   Key            Key


Alternate Key

-- An Alternate Key is a Candidate Key that was not selected as the Primary Key.

Super Key
    ↓
Remove unnecessary attributes
    ↓
Candidate Key
    ↓
Choose one
    ↓
Primary Key

Remaining Candidate Keys
    ↓
Alternate Keys


Foreign Key

--A Foreign Key is a column in one table that refers to the Primary Key of another table.

--Its main purpose is to create a relationship between two tables.

Composite Key

--A Composite Key is a key made using two or more columns together to uniquely identify a row.

--Composite = combination of multiple column
Unique key
--A Unique Key is a constraint that ensures that duplicate values are not allowed in the specified column or combination of columns.
--A table can have multiple UNIQUE constraints.s
