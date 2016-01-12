
use meetup_informations;

alter table Users add Phone varchar(25);
alter table Users add SkypeId varchar(20) after Email;