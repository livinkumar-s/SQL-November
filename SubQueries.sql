use student;
create table product (
id int primary key auto_increment,
name varchar(50) not null
);

create table details (
id int primary key auto_increment,
price float not null,
bestSeller boolean not null,
productId int not null,
foreign key (productId) references product(id)
);


insert into product (name) values 
("laptop"),("mobile"),("Tab"),("Ear Phones"),("TWS");

select * from product;
select * from details;
insert into details (price,bestSeller,productId) values
(200000,1,1),
(20000,0,2),
(50000,1,3),
(500,1,4),
(5000,0,5);

select productId from details order by price desc limit 1;

select * from product where 
id=(select productId from details order by price desc limit 1);

select productId from details where bestSeller=1;

select * from product where id in 
(select productId from details where bestSeller=1);

create table students (
id int primary key auto_increment,
name varchar(30) not null,
marks int not null,
dept varchar(10) not null
);

insert into students (name, marks, dept) values 
("veena",88,'ECE'), 
("reena",99,'ECE'), 
("vishnu",79,'ECE'), 
("nila",70,'CSE'), 
("dinesh",69,'CSE'), 
("naveen",88,'CSE'), 
("prem",100,'CSE'), 
("henry",91,'EEE'), 
("vinod",48,'EEE');

select marks from students where dept='EEE';

select * from students where marks > ANY 
(select marks from students where dept='ECE');

select * from students where marks >= ALL 
(select marks from students where dept='ECE');


