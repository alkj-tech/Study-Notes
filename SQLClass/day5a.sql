create table customers(
id int primary key auto_increment,
name varchar(255) not null,
age int check (age> 18),
city varchar(255) default 'chennai');


describe customers;

create table orders(
id int primary  key auto_increment,
ord_name varchar(255)not null,
ord_date date);

describe orders;

alter table customers 
add order_id int,
add constraint foreign key(order_id) references orders(id);

describe products;

alter table orders
add column product_id int,
add constraint foreign key(product_id) references products(product_id);

insert into products(product_name,price,expiry_date)
values('redmi',49999,null),
('sofa',89999,null),
('apples',199,'2025-08-05'),
('mango',99,'2025-08-07'),
('orange',199,'2025-08-06'),
('t-shirt',99,null),
('milk',39,'2025-08-05'),
('biscuits',19,'2025-09-30'),
('oil',499,'2025-11-05');

insert into orders(ord_name,ord_date,product_id)
values('goods','2025-08-04',335),
('goods','2025-08-01',336),
('goods','2025-08-01',337);

insert into customers(name,age,city) 
values('sonu',25,'mumbai'),
('sanam',25,'delhi'),
('shetty',25,'delhi'),
('marry',25,'mumbai');


select * from customers;
select * from orders;

update customers set order_id = 210 where id = 101;

insert into products(product_name,price,expiry_date)
values('kjjjjjj',49999,null),
('ssssssss',89999,null);


