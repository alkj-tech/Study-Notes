use zomoto;

#1.Find the customer name who is not placed any orders
select name from customers where customer_id not in (select customer_id from orders);

#2.Find the duplicate count of customer name in orders table
select a.name,count(a.name) as count from customers a, orders b 
where a.customer_id=b.customer_id group by a.name having count>1;

#3.Find the customers who have placed orders but have not received any deliveries
select a.name from customers a,orders b, deliveries c
where a.customer_id = b.customer_id
and b.order_id = c.order_id
and c.delivery_status != 'Delivered';

#4.Find the names of customers who placed more than 3 orders and have not received any deliveries yet.
select a.name as Customer_Names , count(a.name) as count from customers a,orders b, deliveries c
where a.customer_id = b.customer_id
and b.order_id = c.order_id
and c.delivery_status != 'Delivered'
group by a.name
having count >= 3;

#5.List the restaurant names that have received orders but have no deliveries associated with them.
select b.name as Restaurant_Names 
from orders a, restaurants b
where a.restaurant_id = b.restaurant_id
and a.order_id not in (select order_id from deliveries);




