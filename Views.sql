select * from actordetails;

insert into actordetails (name, email, isActive, noOfMovies)
values ("pradeep ranganathan","pr@gmail.com",1,40);


create view actorMail as select email as actorMail from actordetails;

select * from actormail;