INSERT INTO board_game
	VALUES 
		(1001, 'Terraforming Mars', 2016, '1st', 1, 5, 120, 3.26),
        (1002, 'Terraforming Mars: Ares Expedition', 2021, '1st', 1, 4, 60, 2.92),
		(1003, 'The Lord of the Rings: Journeys in Middle-Earth', 2019, '1st', 1, 5, 120, 2.63),
        (1004, 'Star Wars: Rebellion', 2016, '1st', 2, 4, 240, 3.73),
        (1005, 'Arkham Horror', 2005, '2nd', 1, 8, 240, 3.58),
        (1006, 'Arkham Horror', 2018, '3rd', 1, 6, 180, 3.33),
        (1007, '7 Wonders', 2010, '1st', 2, 7, 30, 2.32),
        (1008, '7 wonders', 2020, '2nd', 3, 7, 30, 2.16),
        (1009, 'Agricola', 2007, '1st', 1, 5, 150, 3.64),
        (1010, 'Agricola', 2016, '2nd', 1, 4, 120, 3.48),
        (1011, 'Caverna: The Cave Farmers', 2013, '1st', 1, 7, 210, 3.78),
        (1012, 'A Feast for Odin', 2016, '1st', 1, 4, 120, 3.86),
        (1013, 'Hallertau', 2020, '1st', 1, 4, 140, 3.31),
        (1014, 'Viticulture Esssential Edition', 2015, '1st', 1, 6, 90, 2.89),
        (1015, 'Scythe', 2016, '1st', 1, 5, 115, 3.44),
        (1016, 'Tapestry', 2019, '1st', 1, 5, 120, 2.91)
;

INSERT INTO board_game_expansion
	VALUES 
		(4001, 'Venus Next', 2017, 1001),
		(4002, 'Hellas & Elysium', 2017, 1001),
		(4003, 'Prelude', 2018, 1001),
		(4004, 'Colonies', 2018, 1001),
		(4005, 'Turmoil', 2019, 1001),
		(4006, 'Villains of Eriador Figure pack', 2019, 1003),
        (4007, 'Shadowed Paths', 2020, 1003),
        (4008, 'Dwellers in Darkness Figure Pack', 2020, 1003),
        (4009, 'Spreading War', 2021, 1003),
        (4010, 'Scourges of the Wastes Figure Pack', 2022, 1003),
        (4011, 'Rise of the Empire', 2017, 1004),
        (4012, 'Dunwich Horror', 2006, 1005),
        (4013, 'Curse of the Dark Pharaoh', 2006, 1005),
        (4014, 'The King in Yellow', 2007, 1005),
        (4015, 'The Black Goat of the Woods', 2008, 1005),
        (4016, 'Kingsport Horror', 2008, 1005),
        (4017, 'Innsmouth Horror', 2009, 1005),
        (4018, 'The Lurker at the Threshold', 2010, 1005),
        (4019, 'Miskatonic Horror', 2011, 1005),
        (4020, 'Dead of Night', 2019, 1006),
        (4021, 'Under Dark Waves', 2020, 1006),
        (4022, 'Secrets of the Order', 2021, 1006),
        (4023, 'Leaders', 2011, 1007),
        (4024, 'Cities', 2012, 1007),
        (4025, 'Babel', 2014, 1007),
        (4026, 'Armada', 2018, 1007),
		(4027, 'Cities', 2020, 1008),
        (4028, 'Armada', 2020, 1008),
        (4029, 'Leaders', 2021, 1008),
        (4030, 'Edifice', 2023, 1008),
        (4031, 'Farmers of the Moor', 2009, 1009),
        (4032, 'The Goodies', 2010, 1009),
        (4033, 'Expansion for 5 and 6 Players', 2016, 1010),        
		(4034, 'Farmers of the Moor', 2018, 1010),
        (4035, 'Bubulcus Deck', 2018, 1010),
        (4036, 'Corbarius Deck', 2019, 1010),
        (4037, 'Dulcinaria Deck', 2020, 1010),
        (4038, 'Consul Dirigens Deck', 2022, 1010),
        (4039, 'The Forgotten Folk', 2018, 1011),
        (4040, 'Frantic Fiends', 2022, 1011),
        (4041, 'The Norwegians', 2018, 1012),
        (4042, 'Tuscany Essential Edition', 2016, 1014),
        (4043, 'Moor Visitors', 2016, 1014),
        (4044, 'Visit from the Rhine Valley', 2018, 1014),
        (4045, 'Viticulture World: Cooperative Expansion', 2022, 1014),
        (4046, 'Invaders from Afar', 2016, 1015),
        (4047, 'The Wind Gambit', 2017, 1015),
        (4048, 'The Rise of Fenris', 2018, 1015),
        (4049, 'Encounters', 2018, 1015),
        (4050, 'Plans and Ploys', 2020, 1016),
        (4051, 'Arts & Architecture', 2021, 1016),
        (4052, 'Fantasies & Futures', 2023, 1016)
;

INSERT INTO designer
	VALUES 
		(2001, 'Fryxelius', 'Jacob', 'Sweden'),
        (2002, 'Engelstein', 'Sydney', 'N/A'),
        (2003, 'Little', 'Nick', 'N/A'),
        (2004, 'Hajek', 'Nathan', 'N/A'),
        (2005, 'Holdingaus', 'Grace', 'N/A'),
        (2006, 'Konieczka', 'Corey', 'USA'),
        (2007, 'Launius', 'Richard', 'USA'),
        (2008, 'Wilson', 'Kevin', 'USA'),
        (2009, 'Valens', 'Nikki', 'USA'),
        (2010, 'Bauza', 'Antoine', 'France'),
        (2011, 'Rosenberg', 'Uwe', 'Germany'),
        (2012, 'Stegmaier', 'Jamey', 'USA'),
        (2013, 'Stone', 'Alan', 'USA')
;

INSERT INTO designer_group
	VALUES
		(2001, 1001), (2001, 1002), (2002, 1002), (2003, 1002), (2004, 1003), (2005, 1003), (2006, 1004), (2007, 1005), 
		(2008, 1005), (2007, 1006), (2008, 1006), (2009, 1006), (2010, 1007), (2010, 1008), (2011, 1009), (2011, 1010), 
		(2011, 1011), (2011, 1012), (2011, 1013), (2012, 1014), (2013, 1014), (2012, 1015), (2012, 1016) 
;

INSERT INTO publisher
	VALUES 
		(3001, 'FryxGames', 'Sweden'),
        (3002, 'Stronghold Games', 'USA'),
        (3003, 'Fantasy Flight Games', 'USA'),
        (3004, 'Asmodee', 'France'),
        (3005, 'Repos Production', 'Belgium'),
        (3006, 'Lautapelit.fi', 'Finland'),
        (3007, 'Lookout Spiele', 'Germany'),
        (3008, 'Z-Man Games', 'USA'),
        (3009, '999 Games', 'Belgium'),
        (3010, 'Feuerland Spiele', 'Germany'),
        (3011, 'Stonemaier Games', 'USA'),
        (3012, 'Arclight Games', 'Japan')
;

INSERT INTO publisher_group
	VALUES
		(3001, 1001), (3002, 1001), (3006, 1001), (3012, 1001), (3001, 1002), (3002, 1002), (3012, 1002), (3003, 1003), 
        (3004, 1003), (3003, 1004), (3004, 1004), (3003, 1005), (3004, 1005), (3012, 1005), (3003, 1006), (3004, 1006), 
        (3012, 1006), (3004, 1007), (3005, 1007), (3006, 1007), (3004, 1008), (3005, 1008), (3006, 1008), (3007, 1009), 
        (3008, 1009), (3009, 1009), (3006, 1010), (3007, 1010), (3009, 1010), (3007, 1011), (3009, 1011), (3010, 1012), 
        (3008, 1012), (3007, 1013), (3010, 1014), (3011, 1014), (3012, 1014), (3010, 1015), (3011, 1015), (3012, 1015), 
        (3009, 1016), (3011, 1016), (3012, 1016)
;

INSERT INTO player_profile
	VALUES
		(8001, 'Joonis', 'Espoo', 'Main user'),
        (8002, 'Jeenis', 'Espoo', 'Call at 123123 whenever'),
        (8003, 'Jöönis', 'Espoo', 'Hates all games? Don\'t invite lol'),
        (8004, 'Jaanis', 'Helsinki', 'message on whatsapp'),
        (8005, 'Juunis', 'Espoo', 'Tchingeling'),
        (8006, 'Jiinis', 'Vaasa', 'Weird one'),
        (8007, 'Jåånis', 'Lahti', 'Nullllll'),
        (8008, 'Jyynis', 'Helsinki', 'Maybe I should have used real people as examples'),
        (8009, 'Jäänis', 'Espoo', 'I\'m out of vocals')
;

INSERT INTO player_status
	VALUES
		(1014, 8001, 1, 1, 8.5, 3.70),
        (1014, 8002, 1, 0, 8.2, 3.60),
        (1014, 8003, 1, 0, 6.5, 4.70),
        (1014, 8004, 1, 0, 7.5, 3.20),
        (1006, 8001, 1, 1, 7.8, 3.50),
        (1006, 8002, 1, 0, 7.8, 3.50),
        (1006, 8005, 1, 0, 7.8, 3.50),
        (1006, 8006, 1, 0, 7.8, 3.50),
        (1006, 8007, 1, 0, 7.8, 3.50),
        (1006, 8009, 1, 0, 7.8, 3.50),
        (1001, 8001, 1, 1, 8.0, 3.20),
        (1001, 8002, 1, 0, 8.2, 3.30),
        (1001, 8004, 1, 0, 8.2, 3.30),
        (1004, 8001, 1, 1, 9.2, 3.70),
        (1004, 8004, 1, 0, 9.0, 3.75)
;
INSERT INTO play_session
	VALUES
		(1014, 9001, 20230202, 200),
        (1014, 9002, 20230203, 150),
        (1006, 9003, 20230205, 240),
        (1006, 9004, 20230207, 200),
        (1001, 9005, 20230210, 160),
        (1004, 9006, 20230211, 240)
;

INSERT INTO player_in_play_session
	VALUES
		(8001, 9001), (8002, 9001), (8003, 9001), (8004, 9001),
		(8001, 9002), (8002, 9002), (8004, 9002),
        (8001, 9003), (8005, 9003), (8006, 9003), (8007, 9003),
        (8001, 9004), (8002, 9004), (8003, 9004), (8005, 9004), (8006, 9004), (8009, 9004),
        (8001, 9005), (8002, 9005), (8004, 9005),
        (8001, 9006), (8004, 9006)
;

INSERT INTO play_session_expansion
	VALUES
		(4042, 9001), (4043, 9001), (4044, 9001), (4045, 9001),
        (4020, 9003), (4021, 9003), (4022, 9003)
	;