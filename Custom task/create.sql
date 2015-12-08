
create database Official_Star_Wars_Movies;

use Official_Star_Wars_Movies;

create table Releases(
	Title varchar(30) not null,
	Release_year integer not null,
primary key(Title) );

create table Director(
	Id varchar(3) not null,
	Value varchar(30) not null,
primary key(Id) );

create table Stars(
	TeamId varchar(10) not null,
	Value varchar(300) not null,
primary key(TeamId) );

create table EpisodeGuide(
	EpisodeNr varchar(5) not null,
	ReleaseId varchar(30) not null,
	DirectorId varchar(3) not null,
	StarsId varchar(10) not null,
primary key(EpisodeNr),
constraint connect_to_Releases foreign key (ReleaseId) references Releases (Title),
constraint connect_to_Director foreign key (DirectorId) references Director (Id),
constraint connect_to_Stars foreign key (StarsId) references Stars (TeamId) );