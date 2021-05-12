-- LEAGUE HISTORIES

-- League Histories Page select query 
SELECT * FROM league_histories;

-- League Histories Page insert query
INSERT INTO league_histories ()
VALUES ();

-- League Histories Page update query

UPDATE league_histories
SET league_name = $leagueName, completed_seasons_num = $completedSeasonsNum
WHERE league_histories_id = $id;

-- League Histories Page delete query
DELETE FROM league_histories WHERE league_id = $id;

-- SEASONS

-- Seasons Page select query
SELECT * FROM seasons;

-- Seasons Page insert query
INSERT INTO seasons ()
VALUES ();

-- Seasons Page update query

-- Seasons Page delete query
DELETE FROM seasons WHERE season_id = $id;

-- TEAMS

-- Teams Page select query
SELECT * FROM teams;

-- Teams Page insert query
INSERT INTO teams ()
VALUES ();

-- Teams Page update query

-- Teams Page delete query
DELETE FROM teams WHERE team_id = $id;

-- PLAYERS

-- Players Page select query
SELECT * FROM players;

-- Players Page insert query
INSERT INTO players ()
VALUES ();

-- Players Page update query

-- Players Page delete query
DELETE FROM players WHERE player_id = $id;

-- PLAYER TEAM RELATIONS

-- Player Team Relations Page select query
SELECT * FROM player_team_relations;

-- Player Team Relations Page insert query
INSERT INTO player_team_relations ()
VALUES ();

-- Player Team Relations Page update query

-- Player Team Relations Page delete query
DELETE FROM player_team_relations WHERE player_team_relations_id = $id;

-- COACHES

-- Coaches Page select query
SELECT * FROM coaches;

-- Coaches Page insert query
INSERT INTO coaches ()
VALUES ();

-- Coaches Page update query

-- Coaches Page delete query
DELETE FROM coaches WHERE coach_id = $id;

-- COACH TEAM RELATIONS

-- Coach Team Relations Page select query
SELECT * FROM coach_team_relations;

-- Coach Team Relations Page insert query
INSERT INTO coach_team_relations ()
VALUES ();

-- Coach Team Relations Page update query

-- Coach Team Relations Page delete query
DELETE FROM coach_team_relations WHERE coach_team_relations_id = $id;
