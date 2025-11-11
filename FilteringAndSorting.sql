use student;

select * from agelist;


set sql_safe_updates=0;

delete from agelist;

INSERT INTO agelist values 
(1,"Vijay",51),(2,"Ajith",52),(3,"Surya",50),(4,"Karthi",45),
(5,"Vikram",57),(6,"Arya",45),(7,"Kavin",37),(8,"PR",27);	

SELECT * FROM agelist where id>=4 and age<=50;


SELECT * FROM agelist where id>=4 or age<=50;

SELECT * FROM agelist where not age>50;


SELECT * FROM agelist WHERE age BETWEEN 40 and 50;
SELECT * FROM agelist WHERE id BETWEEN 6 and 12;

SELECT * from agelist where not age in (43,42,45,49,50,51,52,59,70);

SELECT * FROM agelist WHERE name LIKE "%a%";

SELECT * FROM agelist ORDER BY age asc;
SELECT * FROM agelist ORDER BY name desc;

select * from agelist where age>50 order by name asc limit 2;

select * from agelist limit 2 offset 2;
