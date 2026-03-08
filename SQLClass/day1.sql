create database super_market;

drop database super_market;

use super_market;

CREATE table products(
product_id int primary key,
product_name varchar(255) not null,
price int,
expiry_date varchar(255)
);

alter table products add
product_vendor varchar(255);

alter table products drop 
product_vendor;

alter table products modify
expiry_date date default '2026-06-20';


drop table products;

truncate table products; 

select * from products;

describe products;
