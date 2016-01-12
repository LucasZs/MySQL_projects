
use meetup_informations;

update Users set Email = "valtervalaki@something.hu" where Name = "Valter Valaki";
update Users set Birthdate = "1976-09-08 00:00:00" where Name = "Samuel Somebody";
update Users set Avatar = "SamSom" where Name = "Samuel Somebody";

update Statuses set Value = "Going" where Id = "1";
update Statuses set Value = "Tentative" where Id = "2";
update Statuses set Value = "Not going" where Id = "3";
update Statuses set Value = "Presenting" where Id = "4";

update Meetups set Topic = "Bits & Bytes" where Topic = "Bits and Bytes";
update Meetups set Location = "Kistarcsa" where Start = "2015-11-25 08:00:00";

