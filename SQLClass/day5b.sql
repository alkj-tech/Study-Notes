select * from products;

select * from orders;

select * from customers;

select * from customers where city = 'chennai' or city = 'mumbai';

select * from customers where city = 'chennai' and age > 30;

select * from customers where not city = 'chennai' order by id desc;

select * from products where expiry_date is not null;

delete from products where product_id = 339 ;