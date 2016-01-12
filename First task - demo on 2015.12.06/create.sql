
create database meetup_informations;

use meetup_informations;

create table Meetups(
	Id integer not null,
	Start datetime not null,
	Location varchar(150) not null,
	Topic varchar(150) not null,
	Description varchar(1000) not null,
primary key(Id) );

create table Statuses(
	Id integer not null,
	Value varchar(50) not null,
primary key(Id) );

create table Users(
	Id integer not null,
	Name varchar(100) not null,
	Birthdate datetime not null,
	Introduction varchar(500),
	Avatar varchar(1000),
	Email varchar(150),
primary key(Id) );

create table MeetupRegistrations(
	Id integer not null,
	StatusId integer not null,
	MeetupId integer not null,
	UserId integer not null,
primary key(Id),
constraint connect_to_Statuses foreign key (StatusId) references Statuses (Id),
constraint connect_to_Meetups foreign key (MeetupId) references Meetups (Id),
constraint connect_to_Users foreign key (UserId) references Users (Id) );