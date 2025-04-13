-- SQL queries to retrieve and analyze data related to customer orders

-- Retrieve all orders
SELECT * FROM cust_order;

-- Retrieve orders by customer ID
SELECT * FROM cust_order WHERE customer_id = ?;

-- Retrieve order details including order lines
SELECT o.order_id, o.order_date, ol.book_id, ol.quantity
FROM cust_order o
JOIN order_line ol ON o.order_id = ol.order_id
WHERE o.customer_id = ?;

-- Count total orders by status
SELECT order_status, COUNT(*) AS total_orders
FROM cust_order
GROUP BY order_status;

-- Retrieve orders with shipping method details
SELECT o.order_id, o.order_date, sm.method_name
FROM cust_order o
JOIN shipping_method sm ON o.shipping_method_id = sm.method_id;

-- Retrieve order history for a specific order
SELECT oh.order_id, oh.status_change_date, oh.status
FROM order_history oh
WHERE oh.order_id = ?;