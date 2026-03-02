-- =========================
-- DUMMY DATA
-- =========================

INSERT INTO customers (name, email) VALUES
('yoyots', 'yoyotsji@gmail.com'),
('akki', 'akkiji@gmail.com'),
('salahing', 'salahingji@gmail.com');

INSERT INTO products (name, price, stock) VALUES
('cd bokep', 15000, 22),
('celana dalam', 13000, 4),
('tissu basah', 2500, 11),
('cas hp tipe c', 47000, 5);

INSERT INTO orders (customer_id) VALUES
(1),
(2),
(1);
(3);

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(6, 1, 11, 15000),
(6, 2, 3, 13000),
(7, 1, 5, 15000),
(8, 3, 2, 2500),
(7, 4, 2, 47000),
(9, 1, 1, 15000);