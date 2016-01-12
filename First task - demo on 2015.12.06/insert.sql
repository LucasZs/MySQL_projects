
use meetup_informations;

insert into Meetups values ("151125800", "2015-11-24 08:00:00", "Budapest", "Bits and Bytes", "The basic bricks of programming");
insert into Meetups values ("1512061600", "2015-12-06 16:00:00", "Budapest", "Santa Claus meets the coders", "Who was good in the last year? And what about the bads? Santa tells everything!");
insert into Meetups values ("1512201500", "2015-12-20 15:00:00", "Los Angeles", "Star Wars Meetup", "For the biggest Star Wars fans ever");
insert into Meetups values ("1512231700", "2015-12-23 17:00:00", "Budapest", "Christmas 2015 Meetup", "The biggest Christmas Meetup in 2015");
insert into Meetups values ("1512311700", "2015-12-31 17:00:00", "Budapest",  "Say goodbye to 2015", "Close 2015 with this meetup!");


insert into Statuses values ("1", "going");
insert into Statuses values ("2", "tentative");
insert into Statuses values ("3", "not going");
insert into Statuses values ("4", "presenting");

insert into Users values ("7010231", "John Doe", "1970-10-23 00:00:00", "Works as web developer since 1995", "JohnnyWeb", "johndoe@something.com");
insert into Users (Id, Name, Birthdate, Introduction, Avatar) values ("8501041", "Jane Doe", "1985-01-04 00:00:00", "Works as web designer since 2008", "JaneWarrior");
insert into Users (Id, Name, Birthdate, Introduction) values ("9006072", "Edward Example", "1990-06-07 00:00:00", "Works as system administrator since 2012");
insert into Users (Id, Name, Birthdate) values ("7608081", "Samuel Somebody", "1976-08-08 00:00:00");
insert into Users (Id, Name, Birthdate, Email) values ("8212071", "Valter Valaki", "1982-12-07 00:00:00","valtervalaki@something.com");

insert into MeetupRegistrations values ("54321", "1", "151125800", "8212071");
insert into MeetupRegistrations values ("65432", "2", "1512061600", "7608081");
insert into MeetupRegistrations values ("76543", "3", "1512201500", "9006072");
insert into MeetupRegistrations values ("87654", "4", "1512231700", "8501041");
insert into MeetupRegistrations values ("98765", "2", "1512311700", "7010231");