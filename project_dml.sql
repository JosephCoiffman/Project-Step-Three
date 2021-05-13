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
UPDATE seasons
SET league_id = $leagueID, season_name = $seasonName, date_season_started = $dateSeasonStarted, 
date_season_ended = $dateSeasonEnded, league_champion = $leagueChampion, western_champion = $westernChampion, 
eastern_champion = $easternChampion, most_valuable_player = $mostValuablePlayer, sixth_man_of_the_year = $sixthManOfTheYear
WHERE seasons_id = $id;

-- Seasons Page delete query
DELETE FROM seasons WHERE season_id = $id;

-- TEAMS

-- Teams Page select query
SELECT * FROM teams;

-- Teams Page insert query
INSERT INTO teams ()
VALUES ();

-- Teams Page update query
UPDATE teams
SET season_id = $seasonID, team_name = $teamName, team_place_city = $teamPlaceCity, 
team_place_state = $teamPlaceState, points_per_game = $pointsPerGame, assists_per_game = $assistsPerGame, 
steals_per_game = $stealsPerGame, blocks_per_game = $blocksPerGame, rebounds_per_game = $reboundsPerGame, 
fouls_per_game = $foulsPerGame, fg_attempted_per_game = $fgAttemptedPerGame, 3pt_attempted_per_game = $3ptAttemptedPerGame, 
fg_percentage = $fgPercentage, 3pt_fg_percentage = $3ptfgPercentage, ft_percentage = $ftPercentage, 
point_differential = $pointDifferential, reg_season_wins = $regSeasonWins, reg_season_losses = $regSeasonLosses, 
reg_season_win_percentage = $regSeasonWinPercentage
WHERE teams_id = $id;

-- Teams Page delete query
DELETE FROM teams WHERE team_id = $id;

-- PLAYERS

-- Players Page select query
SELECT * FROM players;

-- Players Page insert query
INSERT INTO players ()
VALUES ();

-- Players Page update query
UPDATE players
SET player_name = $playerName, player_jersey_number = $playerJerseyNumber
WHERE players_id = $id;

-- Players Page delete query
DELETE FROM players WHERE player_id = $id;

-- PLAYER TEAM RELATIONS

-- Player Team Relations Page select query
SELECT * FROM player_team_relations;

-- Player Team Relations Page insert query
INSERT INTO player_team_relations ()
VALUES ();

-- Player Team Relations Page update query
UPDATE player_team_relations
SET player_id = $playerID, team_id = $teamID
WHERE player_team_relations_id = $id;

-- Player Team Relations Page delete query
DELETE FROM player_team_relations WHERE player_team_relations_id = $id;

-- COACHES

-- Coaches Page select query
SELECT * FROM coaches;

-- Coaches Page insert query
INSERT INTO coaches ()
VALUES ();

-- Coaches Page update query
UPDATE coaches
SET coach_name = $coachName, coach_wins = $coachWins, coach_losses = $coachLosses, coach_win_percentage = $coachWinPercentage
WHERE coach_id = $id;

-- Coaches Page delete query
DELETE FROM coaches WHERE coach_id = $id;

-- COACH TEAM RELATIONS

-- Coach Team Relations Page select query
SELECT * FROM coach_team_relations;

-- Coach Team Relations Page insert query
INSERT INTO coach_team_relations ()
VALUES ();

-- Coach Team Relations Page update query
UPDATE coach_team_relations
SET coach_id = $coachID, team_id = $teamID
WHERE coach_team_relations_id = $id;

-- Coach Team Relations Page delete query
DELETE FROM coach_team_relations WHERE coach_team_relations_id = $id;
