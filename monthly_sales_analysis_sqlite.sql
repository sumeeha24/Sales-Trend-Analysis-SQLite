CREATE TABLE IF NOT EXISTS orders (
  order_id   TEXT,
  order_date TEXT,
  amount     REAL,
  product_id TEXT
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
('O001','2024-01-05', 150.00, 'P1'),
('O002','2024-01-20', 200.00, 'P2'),
('O003','2024-02-10', 90.00,  'P1'),
('O004','2024-02-25', NULL,   'P3'),
('O005','2024-03-09', 400.00, 'P2'),
('O006','2023-12-15', 50.00,  'P4');

SELECT
  CAST(strftime('%Y', order_date) AS INTEGER) AS year,
  CAST(strftime('%m', order_date) AS INTEGER) AS month,
  SUM(COALESCE(amount,0)) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;
