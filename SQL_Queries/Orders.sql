-- =============================================
-- QA Portfolio - Orders SQL Queries
-- Purpose: Order data validation
-- =============================================


-- 1. Get all orders
SELECT *
FROM orders;


-- 2. Get an order by ID
SELECT *
FROM orders
WHERE id = 10001;


-- 3. Get all orders belonging to a user
SELECT *
FROM orders
WHERE user_id = 1001;


-- 4. Count orders for a user
SELECT
    user_id,
    COUNT(*) AS order_count
FROM orders
WHERE user_id = 1001
GROUP BY user_id;


-- 5. Find orders by status
SELECT *
FROM orders
WHERE status = 'completed';


-- 6. Find orders with invalid total amount
SELECT *
FROM orders
WHERE total_amount < 0;


-- 7. Find orders with missing required data
SELECT *
FROM orders
WHERE user_id IS NULL
   OR total_amount IS NULL
   OR status IS NULL;


-- 8. Verify order totals
SELECT
    id,
    user_id,
    total_amount,
    status
FROM orders
WHERE id = 10001;


-- 9. Get recent orders
SELECT *
FROM orders
ORDER BY created_at DESC;


-- 10. Calculate total purchase amount for a user
SELECT
    user_id,
    SUM(total_amount) AS total_purchase_amount
FROM orders
WHERE user_id = 1001
GROUP BY user_id;


-- 11. Find cancelled orders
SELECT *
FROM orders
WHERE status = 'cancelled';


-- 12. Verify order after API update
SELECT
    id,
    user_id,
    total_amount,
    status,
    updated_at
FROM orders
WHERE id = 10001;


-- 13. Verify order belongs to the expected user
SELECT
    o.id AS order_id,
    o.user_id,
    u.email
FROM orders o
JOIN users u
    ON o.user_id = u.id
WHERE o.id = 10001;


-- 14. Verify order count by status
SELECT
    status,
    COUNT(*) AS order_count
FROM orders
GROUP BY status;
