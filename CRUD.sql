USE student;

CREATE TABLE agelist (
id int primary key,
name varchar(50),
age int
);

INSERT INTO agelist values 
(5,"Vikram",57),(6,"Arya",45),(7,"Kavin",37),(8,"PR",27);	

SELECT * FROM agelist where age=57;

UPDATE agelist SET age=59;

SET sql_safe_updates=1;

DELETE froM agelist WHERE id=8;

