 -- INSERT

-- Adds new rows.

INSERT INTO Employee
VALUES (1, 'Rahul', 50000);

-- Now:

-- id | name  | salary
-- -------------------
-- 1  | Rahul | 50000


-- UPDATE

-- Changes existing data.

UPDATE Employee
SET salary = 60000
WHERE id = 1;

-- Before:

-- 1 | Rahul | 50000

-- After:
-- 1 | Rahul | 60000

-- DELETE

-- Deletes rows from a table.

DELETE FROM Employee
WHERE id = 1;

-- Only the matching row is removed.

-- The table itself remains.










6
