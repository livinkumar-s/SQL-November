use student;

select abs(-14.555555) as result;
select round(14.9999) as result;
select ceil(14.0001) as result;
select floor(14.99999999) as result;
select mod(45,4) as result;
select power(4,3) as result;
select rand() as result;


select length("hello world") as result;
select upper("hello world") as result;
select lower("HELLO WORLD") as result;
select concat("hello"," world","....","!") as result;
select substring("Hello guys I am From Karur",17,4) as result;
select replace("Hello guys I am From Karur","Karur","tamilnadu") as result;
select trim("             hello world          ") as result;
select datediff("2026-01-01",curdate()) as dateDiff;

select id, upper(name) as name,age as actorage from agelist;

select concat("His name is ",upper(name)) as actorName, 
mod(age,2) as result from agelist;



select concat("His name is ",Upper(name)," He is 51 years old...!") as 
ActorName from agelist;


select concat('His name is ',upper(name), '. He is ', age, ' years old..!') 
AS ActorDetails from agelist;