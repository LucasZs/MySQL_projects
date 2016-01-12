
use meetup_informations;

/*List all meetup registrations for a particular user.*/
select MeetupRegistrations.Id, Name from MeetupRegistrations, Users where Name="Jane Doe" and Users.Id=MeetupRegistrations.UserId;

/*List meetups which are after 2015.11.27.*/
select * from Meetups where Start > "2015-11-27";

/*List that users who have introduction (NOT NULL).*/
select * from Users where Introduction like "%";
