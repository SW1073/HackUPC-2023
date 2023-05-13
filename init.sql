create table Users (
	username varchar(100) primary key
);

create table IndividualGame (
    id serial primary key,
	player varchar(100),
	points integer,
	foreign key (player) references Users(username)
);
