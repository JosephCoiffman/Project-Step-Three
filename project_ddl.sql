SET FOREIGN_KEY_CHECKS = 0
DROP TABLE IF EXISTS league_histories;
DROP TABLE IF EXISTS seasons;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS player_team_relations;
DROP TABLE IF EXISTS coaches;
DROP TABLE IF EXISTS coach_team_relations;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE league_histories (
  league_id int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  league_name varchar(255) NOT NULL,
  completed_seasons_num int(11) NOT NULL
)

CREATE TABLE seasons (
  season_id int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  league_id int(11) NOT NULL,
  season_name varchar(255) NOT NULL,
  date_season_started date NOT NULL,
  date_season_ended date NOT NULL,
  league_champion varchar(255) NOT NULL,
  western_champion varchar(255) NOT NULL,
  eastern_champion varchar(255) NOT NULL,
  most_valuable_player varchar(255) NOT NULL,
  defensive_player_of_the_year varchar(255) NOT NULL,
  most_improved_player_of_the_year varchar(255) NOT NULL,
  sixth_man_of_the_year varchar(255) NOT NULL,
  FOREIGN KEY (league_id) REFERENCES league_histories (league_id)  ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE teams (
  team_id int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  season_id int(11) NOT NULL,
  team_name varchar(255) NOT NULL,
  team_place_city varchar(255) NOT NULL,
  team_place_state varchar(255) NOT NULL,
  points_per_game dec(10, 0) NOT NULL,
  assists_per_game dec(10, 0) NOT NULL,
  steals_per_game dec(10, 0) NOT NULL,
  blocks_per_game dec(10, 0) NOT NULL,
  rebounds_per_game dec(10, 0) NOT NULL,
  fouls_per_game dec(10, 0) NOT NULL,
  fg_attempted_per_game dec(10, 0) NOT NULL,
  3pt_attempted_per_game dec(10, 0) NOT NULL,
  fg_percentage dec(10, 0) NOT NULL,
  3pt_fg_percentage dec(10, 0) NOT NULL,
  ft_percentage dec(10, 0) NOT NULL,
  point_differential dec(10, 0) NOT NULL,
  reg_season_wins int(11) NOT NULL,
  reg_season_losses int(11) NOT NULL,
  reg_season_win_percentage dec(10, 0) NOT NULL,
  FOREIGN KEY (season_id) REFERENCES seasons (season_id)  ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE players (
  player_id int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  player_name varchar(255) NOT NULL,
  player_jersey_number varchar(255) NOT NULL, 
  player_height_feet int(11) NOT NULL,
  player_height_inch int(11) NOT NULL,
  points_per_game dec(10, 0),
  assists_per_game dec(10, 0),
  steals_per_game dec(10, 0),
  blocks_per_game dec(10, 0),
  rebounds_per_game dec(10, 0), 
  fouls_per_game dec(10, 0),
  fg_attempted_per_game dec(10, 0),
  3pt_fg_attempted_per_game dec(10, 0),
  ft_attempted_per_game dec(10, 0),
  ft_percentage dec(10, 0),
  plus_minus dec(10, 0)
)

CREATE player_team_relations (
  player_team_id int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  player_id int(11) NOT NULL,
  team_id int(11) NOT NULL,
  FOREIGN KEY (player_id) REFERENCES players (player_id)  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (team_id) REFERENCES teams (team_id)  ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE coaches (
  coach_id int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  coach_name varchar(255) NOT NULL,
  coach_wins int(11) NOT NULL,
  coach_losses int(11) NOT NULL,
  coach_win_percentage dec(10, 0)
)

CREATE coach_team_relations (
  coach_team_id int(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  coach_id int(11) NOT NULL,
  team_id int(11) NOT NULL,
  FOREIGN KEY (coach_id) REFERENCES coaches (coach_id)  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (team_id) REFERENCES teams (team_id)  ON DELETE CASCADE ON UPDATE CASCADE
)

INSERT INTO league_histories (league_name, completed_seasons_num)
VALUES

INSERT INTO seasons (league_id, season_name, date_season_started, date_season_ended, league_champion, western_champion, eastern_champion, most_valuable_player, defensive_player_of_the_year, most_improved_player_of_the_year, sixth_man_of_the_year)
VALUES

INSERT INTO teams (season_id, team_name, team_place_city, team_place_state, points_per_game, assists_per_game, steals_per_game, blocks_per_game, rebounds_per_game, fouls_per_game, fg_attempted_per_game, 3pt_fg_attempted_per_game, ft_attempted_per_game, fg_percentage, 3pt_fg_percentage, ft_percentage, point_differential, reg_season_wins, reg_season_losses, reg_season_win_percentage)
VALUES

INSERT INTO players (player_name, player_jersey_number, player_height_feet, player_height_inch, points_per_game, assists_per_game, steals_per_game, blocks_per_game, rebounds_per_game, fouls_per_game, fg_attempted_per_game, 3pt_fg_attempted_per_game, fg_attempted_per_game, fg_percentage, 3pt_fg_percentage, ft_percentage, plus_minus)
VALUES

INSERT INTO player_team_relations (player_id, team_id)
VALUES

INSERT INTO coaches (coach_name, coach_wins, coach_losses, coach_win_percentage)
VALUES

INSERT INTO coach_team_relations (coach_id, team_id)
VALUES
