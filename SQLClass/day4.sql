CREATE TABLE TempOrders (
    order_id INT,
    customer_id INT,
    restaurants_id INT,
    order_date DATETIME,
    delivery_time DATETIME,
    status ENUM('Pending', 'Delivered', 'Cancelled'),
    total_amount DECIMAL(10, 2),
    payment_mode ENUM('Credit Card', 'Cash', 'UPI'),
    discount_applied DECIMAL(10, 2),
    feedback_rating FLOAT
);
select * from customers ;

select * from orders where order_id=103;

SELECT 
    customer_id,
    COUNT(*) AS total_orders
FROM 
    orders
GROUP BY 
    customer_id
ORDER BY 
    total_orders DESC
LIMIT 10;
select * from restaurants;
select * from deliveries;

select * from delivery_persons;


SELECT * FROM customers WHERE customer_id = '88';