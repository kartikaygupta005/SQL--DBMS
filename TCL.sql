TCL — Transaction Control Language

-- TCL deals with transactions.

-- Commands:

COMMIT
ROLLBACK
SAVEPOINT

-- What is a transaction?

-- Suppose you transfer ₹1000 from Account A to Account B.

-- There are two operations:

-- A → subtract ₹1000
-- B → add ₹1000

-- Both operations should succeed.

-- If the first succeeds but the second fails, the database should be able to undo the transaction.

-- That's where TCL comes in.

COMMIT

-- Makes your changes permanent.

UPDATE Employee
SET salary = 60000
WHERE id = 1;
COMMIT;

-- After COMMIT, the transaction is saved.

-- Think:

-- COMMIT = Save permanently

ROLLBACK

-- Undoes changes that have not been committed.

UPDATE Employee
SET salary = 100000
WHERE id = 1;
ROLLBACK;

-- The update is undone.

-- Think:

-- ROLLBACK = Undo

SAVEPOINT

-- Creates a point inside a transaction to which you can roll back.

UPDATE Employee
SET salary = 60000
WHERE id = 1;
SAVEPOINT A;
UPDATE Employee
SET salary = 70000
WHERE id = 2;
ROLLBACK TO A;

-- The second update is undone, but the first update remains within the transaction.

-- Think:

-- Start
--   ↓
-- Update employee 1
--   ↓
-- SAVEPOINT A
--   ↓
-- Update employee 2
--   ↓
-- ROLLBACK TO A
--   ↓
-- Back to SAVEPOINT A
