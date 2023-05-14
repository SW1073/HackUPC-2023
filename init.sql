create table Users (
	username varchar(100) primary key
);


create table IndividualGame (
    id serial primary key,
	player varchar(100),
	points integer,
	foreign key (player) references Users(username)
);

create table Cities (
    name varchar(100) primary key,
    country varchar(100)
);

create table Questions (
    id serial primary key,
    city varchar(100),
    question varchar(100),
    answer varchar(100),
    choices varchar(100)[] not null,
    foreign key (city) references Cities(name)
);

INSERT INTO Users (username) VALUES ('jafeth');
INSERT INTO Users (username) VALUES ('eloi');
INSERT INTO Users (username) VALUES ('marcel');

INSERT INTO Users (username) VALUES ('Jugador 1');
INSERT INTO Users (username) VALUES ('Jugador 2');
INSERT INTO Users (username) VALUES ('Jugador 3');
INSERT INTO Users (username) VALUES ('Jugador 28');
INSERT INTO Users (username) VALUES ('Jugador 29');
INSERT INTO Users (username) VALUES ('Jugador 30');
INSERT INTO Users (username) VALUES ('Jugador 31');
INSERT INTO Users (username) VALUES ('Jugador 32');
INSERT INTO Users (username) VALUES ('Jugador 33');
INSERT INTO Users (username) VALUES ('Jugador 34');


INSERT INTO IndividualGame (player, points) VALUES ('jafeth', 10);
INSERT INTO IndividualGame (player, points) VALUES ('jafeth', 10);
INSERT INTO IndividualGame (player, points) VALUES ('eloi', 50);
INSERT INTO IndividualGame (player, points) VALUES ('eloi', 50);
INSERT INTO IndividualGame (player, points) VALUES ('marcel', 20);
INSERT INTO IndividualGame (player, points) VALUES ('marcel', 20);

INSERT INTO individualgame (player, points) VALUES ('Jugador 1', 100);
INSERT INTO individualgame (player, points) VALUES ('Jugador 2', 80);
INSERT INTO individualgame (player, points) VALUES ('Jugador 3', 60);
INSERT INTO individualgame (player, points) VALUES ('Jugador 28', 75);
INSERT INTO individualgame (player, points) VALUES ('Jugador 29', 85);
INSERT INTO individualgame (player, points) VALUES ('Jugador 30', 95);
INSERT INTO individualgame (player, points) VALUES ('Jugador 31', 70);
INSERT INTO individualgame (player, points) VALUES ('Jugador 32', 90);
INSERT INTO individualgame (player, points) VALUES ('Jugador 33', 85);
INSERT INTO individualgame (player, points) VALUES ('Jugador 34', 75);


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
INSERT INTO Cities (name, country) VALUES ('London', 'United Kingdom');
INSERT INTO Cities (name, country) VALUES ('Moscow', 'Russia');
INSERT INTO Cities (name, country) VALUES ('Dubai', 'United Arab Emirates');
INSERT INTO Cities (name, country) VALUES ('Amsterdam', 'Netherlands');

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
VALUES ('Moscow', 'What is the name of the famous square in Moscow?', 'Red Square', '{"Red Square", "St. Basil''s Cathedral Square", "Pushkin Square", "Lubyanka Square"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Dubai', 'What is the name of the world''s tallest building in Dubai?', 'Burj Khalifa', '{"Burj Khalifa", "Abraj Al Bait Clock Tower", "Shanghai Tower", "One World Trade Center"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Amsterdam', 'What is the name of the famous museum in Amsterdam?', 'Rijksmuseum', '{"Van Gogh Museum", "Anne Frank House", "Stedelijk Museum Amsterdam", "Rijksmuseum"}');

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

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Paris', 'What is the name of the famous tower in Paris?', 'Eiffel Tower', '{"Leaning Tower of Pisa", "Burj Khalifa", "Empire State Building", "Eiffel Tower"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Paris', 'What is the name of the famous museum in Paris?', 'Louvre Museum', '{"British Museum", "Guggenheim Museum", "Metropolitan Museum of Art", "Louvre Museum"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Paris', 'What is the name of the famous church in Paris?', 'Notre-Dame Cathedral', '{"St. Peter''s Basilica", "Westminster Abbey", "St. Patrick''s Cathedral", "Notre-Dame Cathedral"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Paris', 'What is the name of the famous avenue in Paris?', 'Champs-Élysées', '{"Fifth Avenue", "Oxford Street", "Rodeo Drive", "Champs-Élysées"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('New York', 'What is the name of the famous park in New York?', 'Central Park', '{"Hyde Park", "Golden Gate Park", "Stanley Park", "Central Park"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('New York', 'What is the name of the famous statue in New York?', 'Statue of Liberty', '{"Christ the Redeemer", "Great Sphinx of Giza", "Tian Tan Buddha", "Statue of Liberty"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('New York', 'What is the name of the famous museum in New York?', 'Metropolitan Museum of Art', '{"National Gallery of Art", "Museum of Modern Art", "British Museum", "Metropolitan Museum of Art"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('New York', 'What is the name of the famous building in New York?', 'Empire State Building', '{"Burj Khalifa", "Taipei 101", "Shanghai Tower", "Empire State Building"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('London', 'What is the name of the famous clock tower in London?', 'Big Ben', '{"Tower of London", "Westminster Abbey", "Buckingham Palace", "Big Ben"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('London', 'What is the name of the famous bridge in London?', 'Tower Bridge', '{"Golden Gate Bridge", "Sydney Harbour Bridge", "Brooklyn Bridge", "Tower Bridge"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('London', 'What is the name of the famous ferris wheel in London?', 'London Eye', '{"Orlando Eye", "Singapore Flyer", "Melbourne Star", "London Eye"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('London', 'What is the name of the famous museum in London?', 'British Museum', '{"Louvre Museum", "Metropolitan Museum of Art", "Smithsonian Institution", "British Museum"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Tokyo', 'What is the name of the famous temple in Tokyo?', 'Sensoji Temple', '{"Wat Phra Kaew", "Tiger Cave Temple", "Borobudur Temple", "Sensoji Temple"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Tokyo', 'What is the name of the famous palace in Tokyo?', 'Imperial Palace', '{"Palace of Versailles", "Forbidden City", "Topkapi Palace", "Imperial Palace"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Tokyo', 'What is the name of the famous park in Tokyo?', 'Ueno Park', '{"Central Park", "Hyde Park", "Golden Gate Park", "Ueno Park"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Tokyo', 'What is the name of the famous tower in Tokyo?', 'Tokyo Skytree', '{"Shanghai Tower", "Taipei 101", "CN Tower", "Tokyo Skytree"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Moscow', 'What is the name of the famous cathedral in Moscow?', 'Saint Basil''s Cathedral', '{"Notre-Dame Cathedral", "St. Peter''s Basilica", "Westminster Abbey", "Saint Basil''s Cathedral"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Moscow', 'What is the name of the famous square in Moscow?', 'Red Square', '{"Tiananmen Square", "Times Square", "Piccadilly Circus", "Red Square"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Moscow', 'What is the name of the famous metro system in Moscow?', 'Moscow Metro', '{"New York City Subway", "London Underground", "Paris Metro", "Moscow Metro"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Moscow', 'What is the name of the famous museum in Moscow?', 'State Tretyakov Gallery', '{"Hermitage Museum", "National Gallery", "Museum of Modern Art", "State Tretyakov Gallery"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Amsterdam', 'What is the name of the famous art museum in Amsterdam?', 'Rijksmuseum', '{"Louvre Museum", "National Gallery", "Guggenheim Museum", "Rijksmuseum"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Amsterdam', 'What is the name of the famous canal in Amsterdam?', 'Prinsengracht', '{"Venice Canal", "Panama Canal", "Suez Canal", "Prinsengracht"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Amsterdam', 'What is the name of the famous park in Amsterdam?', 'Vondelpark', '{"Central Park", "Hyde Park", "Golden Gate Park", "Vondelpark"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Amsterdam', 'What is the name of the famous flower market in Amsterdam?', 'Bloemenmarkt', '{"Pike Place Market", "Tsukiji Fish Market", "La Boqueria", "Bloemenmarkt"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Seoul', 'What is the name of the famous palace in Seoul?', 'Gyeongbokgung Palace', '{"Palace of Versailles", "Forbidden City", "Topkapi Palace", "Gyeongbokgung Palace"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Seoul', 'What is the name of the famous tower in Seoul?', 'N Seoul Tower', '{"Eiffel Tower", "CN Tower", "Tokyo Skytree", "N Seoul Tower"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Seoul', 'What is the name of the famous shopping district in Seoul?', 'Myeong-dong', '{"Champs-Elysees", "Ginza", "Fifth Avenue", "Myeong-dong"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Seoul', 'What is the name of the famous theme park in Seoul?', 'Lotte World', '{"Disneyland", "Universal Studios", "Six Flags", "Lotte World"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Los Angeles', 'What is the name of the famous avenue in Los Angeles?', 'Hollywood Boulevard', '{"Fifth Avenue", "Champs-Elysees", "Ginza", "Hollywood Boulevard"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Los Angeles', 'What is the name of the famous pier in Los Angeles?', 'Santa Monica Pier', '{"Brooklyn Bridge", "Golden Gate Bridge", "Tower Bridge", "Santa Monica Pier"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Los Angeles', 'What is the name of the famous museum in Los Angeles?', 'The Getty Center', '{"The Metropolitan Museum of Art", "The British Museum", "The National Gallery", "The Getty Center"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Los Angeles', 'What is the name of the famous amusement park in Los Angeles?', 'Universal Studios Hollywood', '{"Disneyland", "Six Flags Magic Mountain", "Knott''s Berry Farm", "Universal Studios Hollywood"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Sydney', 'What is the name of the famous opera house in Sydney?', 'Sydney Opera House', '{"La Scala", "Royal Opera House", "Metropolitan Opera", "Sydney Opera House"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Sydney', 'What is the name of the famous beach in Sydney?', 'Bondi Beach', '{"Copacabana Beach", "Waikiki Beach", "Miami Beach", "Bondi Beach"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Sydney', 'What is the name of the famous bridge in Sydney?', 'Sydney Harbour Bridge', '{"Golden Gate Bridge", "Tower Bridge", "Brooklyn Bridge", "Sydney Harbour Bridge"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Sydney', 'What is the name of the famous tower in Sydney?', 'Sydney Tower Eye', '{"Eiffel Tower", "Tokyo Tower", "Oriental Pearl Tower", "Sydney Tower Eye"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Cape Town', 'What is the name of the famous mountain in Cape Town?', 'Table Mountain', '{"Mount Everest", "Mount Kilimanjaro", "Mount Fuji", "Table Mountain"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Cape Town', 'What is the name of the famous island near Cape Town that is home to penguins?', 'Boulders Beach', '{"Hawaii", "Bahamas", "Maldives", "Boulders Beach"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Cape Town', 'What is the name of the famous wine region in Cape Town?', 'Stellenbosch', '{"Napa Valley", "Tuscany", "Barossa Valley", "Stellenbosch"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Cape Town', 'What is the name of the famous waterfront in Cape Town?', 'Victoria & Alfred Waterfront', '{"Fisherman''s Wharf", "The Rocks", "Ginza", "Victoria & Alfred Waterfront"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rio de Janeiro', 'What is the name of the famous statue in Rio de Janeiro?', 'Christ the Redeemer', '{"Statue of Liberty", "Tower Bridge", "Eiffel Tower", "Christ the Redeemer"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rio de Janeiro', 'What is the name of the famous beach in Rio de Janeiro?', 'Copacabana', '{"Bondi Beach", "Waikiki Beach", "Miami Beach", "Copacabana"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rio de Janeiro', 'What is the name of the famous neighborhood in Rio de Janeiro?', 'Ipanema', '{"Chinatown", "Little Italy", "Le Marais", "Ipanema"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rio de Janeiro', 'What is the name of the famous carnival in Rio de Janeiro?', 'Carnaval do Rio de Janeiro', '{"Mardi Gras", "Carnival of Venice", "Notting Hill Carnival", "Carnaval do Rio de Janeiro"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Barcelona', 'What is the name of the famous cathedral in Barcelona?', 'Sagrada Familia', '{"Notre-Dame de Paris", "St. Peter''s Basilica", "Westminster Abbey", "Sagrada Familia"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Barcelona', 'What is the name of the famous street in Barcelona?', 'La Rambla', '{"Champs-Élysées", "Oxford Street", "Fifth Avenue", "La Rambla"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Barcelona', 'What is the name of the famous park in Barcelona?', 'Park Güell', '{"Central Park", "Hyde Park", "Villa Borghese", "Park Güell"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Barcelona', 'What is the name of the famous soccer club in Barcelona?', 'FC Barcelona', '{"Real Madrid", "Manchester United", "Bayern Munich", "FC Barcelona"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rome', 'What is the name of the famous ancient arena in Rome?', 'Colosseum', '{"Acropolis", "Stonehenge", "Taj Mahal", "Colosseum"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rome', 'What is the name of the famous fountain in Rome?', 'Trevi Fountain', '{"Bellagio Fountain", "Dubai Fountain", "Magic Fountain of Montjuïc", "Trevi Fountain"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rome', 'What is the name of the famous museum in Rome?', 'Vatican Museums', '{"The Louvre", "The British Museum", "The Metropolitan Museum of Art", "Vatican Museums"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Rome', 'What is the name of the famous basilica in Rome?', 'St. Peter''s Basilica', '{"Notre-Dame de Paris", "Westminster Abbey", "Basilica di Santa Maria del Fiore", "St. Peter''s Basilica"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Berlin', 'What is the name of the famous gate in Berlin?', 'Brandenburg Gate', '{"Gate of India", "Arc de Triomphe", "Victoria Memorial", "Brandenburg Gate"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Berlin', 'What is the name of the famous wall that used to divide Berlin?', 'Berlin Wall', '{"Great Wall of China", "Hadrian''s Wall", "Western Wall", "Berlin Wall"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Berlin', 'What is the name of the famous palace in Berlin?', 'Charlottenburg Palace', '{"Versailles Palace", "Buckingham Palace", "Topkapi Palace", "Charlottenburg Palace"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Berlin', 'What is the name of the famous museum in Berlin?', 'Pergamon Museum', '{"The Hermitage", "The Prado Museum", "The National Gallery", "Pergamon Museum"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Toronto', 'What is the name of the famous tower in Toronto?', 'CN Tower', '{"Eiffel Tower", "Burj Khalifa", "Tokyo Skytree", "CN Tower"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Toronto', 'What is the name of the famous island park in Toronto?', 'Toronto Islands', '{"Central Park", "Stanley Park", "Golden Gate Park", "Toronto Islands"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Toronto', 'What is the name of the famous market in Toronto?', 'St. Lawrence Market', '{"Pike Place Market", "Borough Market", "La Boqueria Market", "St. Lawrence Market"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Toronto', 'What is the name of the famous museum in Toronto?', 'Royal Ontario Museum', '{"Smithsonian Institution", "The British Museum", "The Louvre", "Royal Ontario Museum"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Istanbul', 'What is the name of the famous mosque in Istanbul?', 'Blue Mosque', '{"Hagia Sophia", "Sheikh Zayed Grand Mosque", "Al-Masjid an-Nabawi", "Blue Mosque"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Istanbul', 'What is the name of the famous palace in Istanbul?', 'Topkapi Palace', '{"Buckingham Palace", "Kremlin Palace", "Palace of Versailles", "Topkapi Palace"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Istanbul', 'What is the name of the famous market in Istanbul?', 'Grand Bazaar', '{"Tsukiji Fish Market", "Chatuchak Weekend Market", "Souks of Marrakech", "Grand Bazaar"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Istanbul', 'What is the name of the famous strait that separates Europe and Asia and runs through Istanbul?', 'Bosphorus Strait', '{"Strait of Malacca", "Strait of Gibraltar", "Strait of Hormuz", "Bosphorus Strait"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Bangkok', 'What is the name of the famous temple in Bangkok?', 'Wat Phra Kaew', '{"Tiger Cave Temple", "Shwedagon Pagoda", "Borobudur Temple", "Wat Phra Kaew"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Bangkok', 'What is the name of the famous floating market in Bangkok?', 'Damnoen Saduak Floating Market', '{"Amphawa Floating Market", "Inle Lake Floating Market", "Lok Baintan Floating Market", "Damnoen Saduak Floating Market"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Bangkok', 'What is the name of the famous shopping mall in Bangkok?', 'MBK Center', '{"The Dubai Mall", "Mall of America", "West Edmonton Mall", "MBK Center"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Bangkok', 'What is the name of the famous park in Bangkok?', 'Lumphini Park', '{"Central Park", "Hyde Park", "Vondelpark", "Lumphini Park"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Vienna', 'What is the name of the famous palace in Vienna?', 'Schönbrunn Palace', '{"Versailles Palace", "Pena Palace", "Neuschwanstein Castle", "Schönbrunn Palace"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Vienna', 'What is the name of the famous cathedral in Vienna?', 'St. Stephen\'s Cathedral', '{"Notre-Dame Cathedral", "St. Peter\'s Basilica", "Westminster Abbey", "St. Stephen\'s Cathedral"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Vienna', 'What is the name of the famous amusement park in Vienna?', 'Prater', '{"Disneyland", "Universal Studios", "Europa-Park", "Prater"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Vienna', 'What is the name of the famous coffee house in Vienna?', 'Café Central', '{"Starbucks", "Costa Coffee", "Dunkin\' Donuts", "Café Central"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Venice', 'What is the name of the famous canal in Venice?', 'Grand Canal', '{"Suez Canal", "Panama Canal", "Erie Canal", "Grand Canal"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Venice', 'What is the name of the famous bridge in Venice?', 'Rialto Bridge', '{"Brooklyn Bridge", "Golden Gate Bridge", "Tower Bridge", "Rialto Bridge"}');

INSERT INTO Questions (city, question, answer, choices) 
VALUES ('Venice', 'What is the name of the famous square in Venice?', 'St. Mark\'s Square', '{"Times Square", "Red Square", "Trafalgar Square", "St. Mark\'s Square"}');

