SELECT exp_title AS 'Expansions for Arkham horror, 2nd edition', exp_released AS 'Year released'
	FROM board_game_expansion
    WHERE boardgameid = 1005;
    
SELECT exp_title AS 'Expansions for Arkham horror, 3rd edition', exp_released AS 'Year released'
	FROM board_game_expansion
    WHERE boardgameid = 1006;

SELECT title AS 'Board games for at least 4 players', edition AS 'Edition'
	FROM board_game
	WHERE max_players >= 4;
    
SELECT title AS 'Quick board games for 5 players (or more)', edition AS 'Edition'
	FROM board_game
    WHERE max_players >= 5 AND playtime_in_min <= 60;

/* Find a game for 2 players, where playtime is long and complexity is above average */
SELECT title AS 'Suggested board game', edition AS 'Edition' 
	FROM board_game
    WHERE max_players >= 2 AND playtime_in_min >= 120 AND complexity >= 3.00;
    
SELECT title AS 'Board games with solo mode', edition AS 'Edition', complexity AS 'Complexity on a scale from 1 to 5'
	FROM board_game
    WHERE min_players = 1;

SELECT title AS 'Board games designed by Uwe Rosenberg', edition AS 'Edition', released AS 'Year released'
	FROM board_game
    INNER JOIN designer_group ON board_game.boardgameid = designer_group.boardgameid
    WHERE designerid = 2011;

/*  This next one could be any countries or reimplemented as designers really. Games are listed multiple times, 
	because multiple publishers may have published in the same country */    
SELECT board_game.title AS 'Board games published in France or Belgium' , board_game.edition AS 'Edition', publisher.publishername AS 'Publisher', publisher.publishercountry AS 'Based in'
	FROM board_game
    RIGHT JOIN publisher_group ON board_game.boardgameid = publisher_group.boardgameid
    LEFT JOIN publisher ON publisher.publisherid = publisher_group.publisherid
    WHERE publisher.publishercountry = 'Belgium' OR publisher.publishercountry = 'France';
    
/*  To tidy the previous query up, we can group by game and forfeit multiple publishers. 
	This will list any game only once, so any game published in both France and Belgium will only be listed once. */
SELECT board_game.title AS 'Board games published in France or Belgium' 
	FROM board_game
    RIGHT JOIN publisher_group ON board_game.boardgameid = publisher_group.boardgameid
    LEFT JOIN publisher ON publisher.publisherid = publisher_group.publisherid
    WHERE publisher.publishercountry = 'Belgium' OR publisher.publishercountry = 'France'
    GROUP BY board_game.title
    ORDER BY publishercountry;

SELECT designer.firstname AS 'Designers with more', designer.surname AS 'than 4 games' /* on this very short incomplete list */
	FROM designer
	RIGHT JOIN designer_group ON designer.designerid = designer_group.designerid
    LEFT JOIN board_game ON board_game.boardgameid = designer_group.boardgameid
    GROUP BY board_game.title
    HAVING COUNT(*) >= 4;
    
/* To find out who the user has played with we need to do a series of queries, first we find out the playsessionid and then later the board game's title*/
SELECT player_in_play_session.playsessionid AS 'Playsessions (by id, can be referenced by the app) where Jeenis or Jaanis but not Jöönis were present' 
	FROM player_in_play_session
    LEFT JOIN play_session ON player_in_play_session.playerid = play_session.playsessionid 	
    WHERE (player_in_play_session.playerid = 8002 OR player_in_play_session.playerid = 8004) AND NOT player_in_play_session.playerid = 8003
	GROUP BY player_in_play_session.playsessionid;
 
 /* The app could use the info from above query in the background to perform another query, shown below */
 SELECT board_game.title AS 'Games played with Jeenis or Jaanis, but not Jöönis'
	FROM board_game
    RIGHT JOIN play_session ON  board_game.boardgameid = play_session.boardgameid 	
    WHERE play_session.playsessionid = 9001 OR play_session.playsessionid = 9002 OR 
		  play_session.playsessionid = 9004 OR play_session.playsessionid = 9005 OR 
          play_session.playsessionid = 9006
    GROUP BY board_game.title;
    
SELECT date_when_played AS 'Dates we played games :)'
	FROM play_session;

/* Possible to group by edition too, but there's no real reason to have many editions of a game, except as a collector */
SELECT board_game.title AS 'Board games with a recorded total playtime of 3 hours or more', 
		SUM(recorded_playtime) AS 'Recorded playtime in minutes'
	FROM board_game
	RIGHT JOIN play_session ON  board_game.boardgameid = play_session.boardgameid
    GROUP BY board_game.title
    HAVING SUM(recorded_playtime) >= 180;