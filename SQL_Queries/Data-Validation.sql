-- =============================================
-- QA Portfolio - Data Validation SQL Queries
-- Purpose: Validate data consistency between API and database
-- =============================================


-- 1. Verify user data
SELECT
    id,
    name,
    email,
    role,
    status
FROM users
WHERE id = 1001;


-- 2. Verify user email uniqueness
SELECT
    email,
    COUNT(*) AS email_count
FROM users
GROUP BY email
HAVING COUNT(*) > 1;


-- 3. Verify order belongs to the correct user
SELECT
    o.id AS order_id,
    o.user_id,
    u.id AS expected_user_id,
    u.email
FROM orders o
JOIN users u
    ON o.user_id = u.id
WHERE o.id = 10001;


-- 4. Verify order total
SELECT
    id,
    total_amount
FROM orders
WHERE id = 10001;


-- 5. Verify orders with invalid user references
SELECT
    o.id AS order_id,
    o.user_id
FROM orders o
LEFT JOIN users u
    ON o.user_id = u.id
WHERE u.id IS NULL;


-- 6. Verify invalid order totals
SELECT *
FROM orders
WHERE total_amount < 0;


-- 7. Verify missing required user data
SELECT *
FROM users
WHERE id IS NULL
   OR email IS NULL
   OR name IS NULL;


-- 8. Verify missing required order data
SELECT *
FROM orders
WHERE id IS NULL
   OR user_id IS NULL
   OR total_amount IS NULL
   OR status IS NULL;


-- 9. Verify user status values
SELECT DISTINCT status
FROM users;


-- 10. Verify order status values
SELECT DISTINCT status
FROM orders;


-- 11. Compare number of users
SELECT COUNT(*) AS total_users
FROM users;


-- 12. Compare number of orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- 13. Verify latest user records
SELECT
    id,
    name,
    email,
    created_at
FROM users
ORDER BY created_at DESC;


-- 14. Verify latest order records
SELECT
    id,
    user_id,
    total_amount,
    status,
    created_at
FROM orders
ORDER BY created_at DESC;
