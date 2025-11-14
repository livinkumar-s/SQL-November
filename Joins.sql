use student;

select * from actordetails;
select * from latestmovie;
select * from spouse;

select actordetails.name, actordetails.email,
latestmovie.moviename as latestmovie from actordetails inner join latestmovie 
on actordetails.id=latestmovie.actorId;


select a.name, a.email,
l.moviename as latestmovie from actordetails a left join latestmovie l
on a.id=l.actorId;


select * from actordetails a right join latestmovie l
on a.id=l.actorId;


create table spouse (
id int primary key auto_increment,
name varchar(50) not null,
actorId int not null,
foreign key (actorId) references actordetails(id)
);

insert into spouse (name, actorId) values ("jyothika",5),("sangeetha",7);

select a.name,s.name as spousename, l.moviename as latestmovie
 from actordetails a inner join latestmovie l on a.id = l.actorId
inner join spouse s on a.id=s.actorId;


select concat(
    'His name is ', a.name,
    ', He got married to ', s.name,
    ', He has acted in ', l.moviename
) as actorDetails
from actordetails a
inner join spouse s on a.id = s.actorId
inner join latestmovie l on a.id = l.actorId;

create table size (
id int primary key auto_increment,
size varchar(10)
);

insert into size (size) values ("xl"),("xxl");

select * from size;

select * from color cross join size;