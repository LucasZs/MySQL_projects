
use meetup_informations;

select Location from Meetups where Location = "Budapest";
select Start from Meetups where Start like "2015-11-%";
select Topic from Meetups where Topic like "°%2015%";
select Description from Meetups where Description not like "%2015%";

select Id from Statuses where Id >= "3";
select Value from Statuses where Value not like "%going%";

select Name from Users where Name like "%Doe%" and Birthdate like "1970%";
select Introduction from Users where Introduction like "%";
select Email from Users where Name like "%Valaki%";

select UserId from MeetupRegistrations where Id >= "80000";
select Id from MeetupRegistrations where Id like "%43%" and Id <= "70000";