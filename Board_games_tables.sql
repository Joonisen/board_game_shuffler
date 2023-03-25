/* UNCOMMENT THIS ONLY IF YOU NEED TO CREATE THIS DATABASE! 

CREATE DATABASE board_game_shuffler;
USE board_game_shuffler;

*/

DROP TABLE IF EXISTS player_in_play_session, play_session_expansion, play_session, player_status, player_profile, designer_group, publisher_group, designer, publisher, board_game_expansion, board_game;

CREATE TABLE board_game (
	boardgameid		INTEGER		NOT NULL	PRIMARY KEY,
	/* Can sadly not be unique, since there might exist another edition of the same title */
    title			VARCHAR(64)	NOT NULL, 
	released		INTEGER		NOT NULL,
    /* Board games are sometimes reimplemented and updated, so we differentiate them by editions, 
    e.g. Arkham horror 1st edition came out in 1987, while Arkham horror 2nd edition came out in 2005 */
	edition			VARCHAR(4)	DEFAULT '1st', 
	min_players		INTEGER		NOT NULL	CHECK (min_players > 0 AND min_players <= 12),
	max_players		INTEGER		NOT NULL	CHECK (max_players >= 1 AND max_players <= 12),
	/*This number is based on boardgamegeek's max amount of playtime in minutes for a certain game */
    playtime_in_min	INTEGER		NOT NULL	CHECK (playtime_in_min > 1 AND playtime_in_min <= 1200), 
	/* Complexity is based on boardgamegeek's voter based "Weight" rating, 1.00 being the simplest to learn and play, 
	while 5 is exceptionally difficult to learn and play */
    complexity		DECIMAL(3, 2) CHECK (complexity >= 1.00 AND complexity <= 5.00) 
);

CREATE TABLE designer (
	designerid	INTEGER		NOT NULL	PRIMARY KEY,
    surname		VARCHAR(32)	NOT NULL,
    firstname	VARCHAR(32) NOT NULL,
    designercountry	VARCHAR(32) DEFAULT 'N/A'
);

/* There might be several designers for a particular game and a certain designer might have designed several games */
CREATE TABLE designer_group ( 
	designerid	INTEGER,
    boardgameid INTEGER,
	FOREIGN KEY (designerid) REFERENCES designer(designerid),
    FOREIGN KEY (boardgameid) REFERENCES board_game(boardgameid)
);

CREATE TABLE publisher (
	publisherid		 INTEGER	 NOT NULL	PRIMARY KEY,
    publishername	 VARCHAR(32) NOT NULL,
    publishercountry VARCHAR(32) DEFAULT 'N/A'
);

/*  There might be several publishers for a particular game and a certain publisher might have published several games, 
	e.g. different publishers for different countries */
CREATE TABLE publisher_group ( 
    publisherid INTEGER NOT NULL,
    boardgameid INTEGER NOT NULL,
    FOREIGN KEY (publisherid) REFERENCES publisher (publisherid),
    FOREIGN KEY (boardgameid) REFERENCES board_game (boardgameid)
);

/*  No need for composite key as any particular game can have many expansions, 
	but a particular expansion can only belong to one game */
CREATE TABLE board_game_expansion ( 
    expansionid		INTEGER		NOT NULL	PRIMARY KEY,
    exp_title		VARCHAR(64)	NOT NULL, 
    /*Unfortunately this cannot be unique, as different editions of games can have an expansion with the same name, 
    thus the need for expansionid too */
    exp_released	INTEGER,
	boardgameid		INTEGER		NOT NULL,
    FOREIGN KEY (boardgameid) REFERENCES board_game (boardgameid)
);

CREATE TABLE player_profile (
	playerid		INTEGER		 PRIMARY KEY,
    playernickname	VARCHAR(32)  NOT NULL,
    hometown		VARCHAR(32)  DEFAULT 'N/A',
    contact_method	VARCHAR(128) DEFAULT 'N/A' /* Just freeform text on how to reach them */
);

CREATE TABLE player_status (
	boardgameid				INTEGER		NOT NULL,
    playerid				INTEGER		NOT NULL,
	FOREIGN KEY (boardgameid) REFERENCES board_game (boardgameid),
    FOREIGN KEY (playerid) 	REFERENCES player_profile (playerid),
    player_has_played_game	INTEGER		DEFAULT '0',
    players_owns_game 		INTEGER 	DEFAULT '0',
	player_rating			DECIMAL(3, 1) CHECK (user_rating >= 1.0 AND user_rating <= 10.0),
    player_complexity		DECIMAL(3, 2) CHECK (complexity >= 1.00 AND complexity <= 5.00)
);

/* Here the user can input their own recorded playtime, rating and complexity per played game and when the session was held */
CREATE TABLE play_session (
	boardgameid 		INTEGER 	NOT NULL,
    FOREIGN KEY (boardgameid) REFERENCES board_game (boardgameid),
    playsessionid 		INTEGER 	NOT NULL	PRIMARY KEY,
    date_when_played	DATE,
    recorded_playtime	INTEGER		NOT NULL	CHECK (playtime_in_min > 1 AND playtime_in_min <= 1200)
);

CREATE TABLE player_in_play_session (
	playerid		INTEGER		NOT NULL,
    playsessionid	INTEGER		NOT NULL,
    FOREIGN KEY (playerid) REFERENCES player_profile (playerid),
    FOREIGN KEY (playsessionid) REFERENCES play_session (playsessionid)
);

/*  A certain kind of problem, because one might use any number of expansions for a game, 
	thus the need for composite keys per play session */
CREATE TABLE play_session_expansion (
	expansionid		INTEGER		NOT NULL,
    playsessionid 	INTEGER		NOT NULL,
    FOREIGN KEY (expansionid) 	REFERENCES board_game_expansion (expansionid),
    FOREIGN KEY (playsessionid) REFERENCES play_session (playsessionid)
);


