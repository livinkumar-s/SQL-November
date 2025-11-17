use student;

select upper(name) from actordetails;
select * from agelist;
insert into agelist (id,name) values (9,"teejey");

select count(*) from agelist;
select count(age) from agelist;

create table products(
id int primary key auto_increment,
name varchar(50) not null,
price float not null,
category varchar(10) not null
);

insert into products (name,price,category) values
("apple",120.56,"fruit"),
("orange",100.66,"fruit"),
("banana",40.00,"fruit"),
("onion",50,"veg"),
("potato",60.66,"veg"),
("mobile",20000,"gadget"),
("laptop",200000,"gadget");

select * from products;
select avg(price) from products;
select max(price) from products;
select min(price) from products;
select sum(price) as result from products;

select name,avg(price) from products;

select category, count(*) as noOfProducts, sum(price) as totalPrice,
avg(price) as averagePrice from products group by 
category having count(*)>2;

select category, avg(price) from products group by category 
order by avg(price) desc limit 1;

select * from products where price>100;