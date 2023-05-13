create table Users (
	username varchar(100) primary key
);

create table IndividualGame (
	gameTime timestamp,
	player varchar(100),
	points integer,
	primary key (gameTime, player),
	foreign key (player) references Users(username)
);
