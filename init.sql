create table Users (
	username varchar(100) primary key
);

create table IndividualGame (
    id serial primary key,
	player varchar(100),
	points integer,
	foreign key (player) references Users(username)
);

create tabla Cities (
    name varchar(100) primary key,
    country varchar(100),
);

create table Questions (
    id serial primary key,
    foreign key (city) references Cities(name),
    question varchar(100),
    answer varchar(100),
    choices varchar(100)[] not null
);

INSERT INTO Users (username) VALUES ('jafeth');
INSERT INTO Users (username) VALUES ('eloi');
INSERT INTO Users (username) VALUES ('marcel');

INSERT INTO IndividualGame (player, points) VALUES ('jafeth', 10);
INSERT INTO IndividualGame (player, points) VALUES ('jafeth', 10);
INSERT INTO IndividualGame (player, points) VALUES ('eloi', 50);
INSERT INTO IndividualGame (player, points) VALUES ('eloi', 50);
INSERT INTO IndividualGame (player, points) VALUES ('marcel', 20);
INSERT INTO IndividualGame (player, points) VALUES ('marcel', 20);

INSERT INTO Cities (name, country) VALUES ('New York City', 'United States');
INSERT INTO Cities (name, country) VALUES ('Paris', 'France');
INSERT INTO Cities (name, country) VALUES ('Sydney', 'Australia');
INSERT INTO Cities (name, country) VALUES ('Tokyo', 'Japan');
INSERT INTO Cities (name, country) VALUES ('Cape Town', 'South Africa');
INSERT INTO Cities (name, country) VALUES ('Rio de Janeiro', 'Brazil');
INSERT INTO Cities (name, country) VALUES ('Rome', 'Italy');
INSERT INTO Cities (name, country) VALUES ('Barcelona', 'Spain');
INSERT INTO Cities (name, country) VALUES ('Berlin', 'Germany');
INSERT INTO Cities (name, country) VALUES ('Toronto', 'Canada');
INSERT INTO Cities (name, country) VALUES ('Los Angeles', 'United States');
INSERT INTO Cities (name, country) VALUES ('Mumbai', 'India');
INSERT INTO Cities (name, country) VALUES ('Bangkok', 'Thailand');
INSERT INTO Cities (name, country) VALUES ('Vienna', 'Austria');
INSERT INTO Cities (name, country) VALUES ('Istanbul', 'Turkey');
INSERT INTO Cities (name, country) VALUES ('Madrid', 'Spain');
INSERT INTO Cities (name, country) VALUES ('Seoul', 'South Korea');
INSERT INTO Cities (name, country) VALUES ('Venice', 'Italy');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('New York City', 'What is the tallest building in New York City?', 'One World Trade Center', '{"Empire State Building", "Chrysler Building", "One World Trade Center", "Bank of America Tower"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Paris', 'What is the name of the river that runs through Paris?', 'Seine', '{"Loire", "Rhine", "Danube", "Seine"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('London', 'What is the name of the famous clock tower in London?', 'Big Ben', '{"Eiffel Tower", "Tower Bridge", "Big Ben", "Westminster Abbey"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Tokyo', 'What is the name of the largest park in Tokyo?', 'Ueno Park', '{"Yoyogi Park", "Shinjuku Gyoen National Garden", "Ueno Park", "Hibiya Park"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rome', 'What is the name of the largest amphitheater in the world?', 'Colosseum', '{"Colosseum", "Circus Maximus", "Flavian Amphitheatre", "Theatre of Marcellus"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rio de Janeiro', 'What is the name of the famous statue overlooking Rio de Janeiro?', 'Christ the Redeemer', '{"Our Lady of Aparecida", "Saint Sebastian", "Saint Francis of Assisi", "Christ the Redeemer"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Barcelona', 'What is the name of the famous unfinished church in Barcelona?', 'Sagrada Familia', '{"La Pedrera", "Park Güell", "Sagrada Familia", "Casa Batlló"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Sydney', 'What is the name of the famous opera house in Sydney?', 'Sydney Opera House', '{"Melbourne Opera House", "Brisbane Opera House", "Adelaide Opera House", "Sydney Opera House"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Hong Kong', 'What is the name of the famous theme park in Hong Kong?', 'Hong Kong Disneyland', '{"Hong Kong Disneyland", "Ocean Park", "Universal Studios Singapore", "Tokyo DisneySea"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Moscow', 'What is the name of the famous square in Moscow?', 'Red Square', '{"Red Square", "St. Basil''s Cathedral Square", "Pushkin Square", "Lubyanka Square"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Dubai', 'What is the name of the world''s tallest building in Dubai?', 'Burj Khalifa', '{"Burj Khalifa", "Abraj Al Bait Clock Tower", "Shanghai Tower", "One World Trade Center"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Amsterdam', 'What is the name of the famous museum in Amsterdam?', 'Rijksmuseum', '{"Van Gogh Museum", "Anne Frank House", "Stedelijk Museum Amsterdam", "Rijksmuseum}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Berlin', 'What is the name of the famous wall that once divided Berlin?', 'Berlin Wall', '{"Great Wall of China", "Hadrian''s Wall", "Antonine Wall", "Berlin Wall"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Toronto', 'What is the name of the famous tower in Toronto?', 'CN Tower', '{"Eiffel Tower", "Tokyo Tower", "CN Tower", "Oriental Pearl Tower"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Los Angeles', 'What is the name of the famous avenue in Los Angeles?', 'Hollywood Boulevard', '{"Sunset Boulevard", "Rodeo Drive", "Wilshire Boulevard", "Hollywood Boulevard"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Mumbai', 'What is the name of the famous train station in Mumbai?', 'Chhatrapati Shivaji Terminus', '{"Howrah Junction", "Chhatrapati Shivaji Terminus", "Victoria Terminus", "Mumbai Central"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Bangkok', 'What is the name of the famous temple in Bangkok?', 'Wat Phra Kaew', '{"Wat Arun", "Wat Phra Kaew", "Wat Pho", "Wat Benchamabophit"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Vienna', 'What is the name of the famous palace in Vienna?', 'Schönbrunn Palace', '{"Belvedere Palace", "Hofburg Palace", "Schönbrunn Palace", "Ambras Castle"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Istanbul', 'What is the name of the famous mosque in Istanbul?', 'Blue Mosque', '{"Hagia Sophia", "Süleymaniye Mosque", "New Mosque", "Blue Mosque"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Madrid', 'What is the name of the famous art museum in Madrid?', 'Prado Museum', '{"Reina Sofía Museum", "Thyssen-Bornemisza Museum", "Prado Museum", "Sorolla Museum"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Seoul', 'What is the name of the famous palace in Seoul?', 'Gyeongbokgung Palace', '{"Changdeokgung Palace", "Deoksugung Palace", "Gyeongbokgung Palace", "Gyeonghuigung Palace"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Venice', 'What is the name of the famous canal in Venice?', 'Grand Canal', '{"Rio di San Cassiano", "Rio di San Giovanni Laterano", "Rio dei Greci", "Grand Canal"}');


