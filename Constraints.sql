use student;

CREATE TABLE actordetails(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) unique not null,
isActive boolean default 1,
noOfMovies int not null check (noOfMovies>=25)
);

CREATE TABLE latestmovie(
id int primary key auto_increment,
moviename varchar(50) not null,
actorId int not null,
foreign key (actorId) references actordetails(id)
);

INSERT INTO actordetails (name,email,noOfMovies) values 
("vijay","vj@gmail.com",68);



select * from actordetails;
select * from latestmovie;


insert into latestmovie (moviename,actorId) values ("Bison",9);