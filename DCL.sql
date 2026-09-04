DCL — Data Control Language

-- DCL deals with permissions/access to the database.

-- Commands:

GRANT
REVOKE

-- Think:

-- DCL = Control access

-- GRANT

-- Gives permission to a user.

-- For example:

GRANT SELECT ON Employee TO user1;

-- This gives user1 permission to perform SELECT on Employee.

-- REVOKE

-- Takes permission away.

REVOKE SELECT ON Employee FROM user1;

-- Now user1 no longer has that permission.
