//CREATE

//Used to create a new table/database/object.
CREATE TABLE Employee (
    id INT,
    name VARCHAR(50),
    salary INT
);

// ALTER

// Used to modify an existing table's structure.

// For example, adding a column:

ALTER TABLE Employee
ADD department VARCHAR(50);

// Now the table has:

// id | name | salary | department

// DROP

// Used to completely remove a database object.

DROP TABLE Employee;

//The table itself is gone.

// Employee table
//       ↓
//    DELETED

// Both its structure and data are removed.

//TRUNCATE

// Used to remove all rows from a table while keeping the table structure.

TRUNCATE TABLE Employee;

// Before:

// Employee
// ----------------
// 1  Rahul   50000
// 2  Amit    60000
// 3  Raj     70000

// After:

// Employee
// ----------------
// (empty)

But the table still exists.
