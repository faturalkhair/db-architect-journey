-- =========================
-- BUSINESS ANALYSIS
-- =========================

-- Transaction Detail
SELECT 
    o.order_id,
    c.name AS customer_name,
    p.name AS product_name,
    oi.quantity,
    oi.price,
    (oi.quantity * oi.price) AS total_price
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id;

-- Total Spending Per Customer
SELECT 
    c.name,
    SUM(oi.quantity * oi.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Best Selling Products
SELECT 
    p.name,
    SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_sold DESC;