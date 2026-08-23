-- =============================================
-- QA Portfolio - Users SQL Queries
-- Purpose: User data validation
-- =============================================


-- 1. Get all users
SELECT *
FROM users;


-- 2. Get a user by ID
SELECT *
FROM users
WHERE id = 1001;


-- 3. Find user by email
SELECT *
FROM users
WHERE email = 'john@example.com';


-- 4. Verify user exists
SELECT COUNT(*) AS user_count
FROM users
WHERE id = 1001;


-- 5. Find duplicate email addresses
SELECT
    email,
    COUNT(*) AS duplicate_count
FROM users
GROUP BY email
HAVING COUNT(*) > 1;


-- 6. Find users with missing required data
SELECT *
FROM users
WHERE email IS NULL
   OR name IS NULL;


-- 7. Find inactive users
SELECT *
FROM users
WHERE status = 'inactive';


-- 8. Verify user role
SELECT
    id,
    email,
    role
FROM users
WHERE id = 1001;


-- 9. Verify recently created users
SELECT *
FROM users
ORDER BY created_at DESC;


-- 10. Verify user data after API update
SELECT
    id,
    name,
    email,
    role,
    status
FROM users
WHERE id = 1001;


-- 11. Verify user was deleted
SELECT COUNT(*) AS user_count
FROM users
WHERE id = 1001;
