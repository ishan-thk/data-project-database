CREATE TABLE matches (
	id int ,
	season int ,
	city varchar ,
	date varchar ,
	team1 varchar ,
	team2 varchar ,
	toss_winner varchar ,
	toss_decision varchar ,
	result varchar ,
	dl_applied int ,
	winner varchar ,
	win_by_run int ,
	win_by_wickets int ,
	player_of_match varchar ,
	venue varchar ,
	umpire1 varchar ,
	umpire2 varchar ,
	umpire3 varchar
);


COPY matches FROM '/tmp/matches.csv' DELIMITER ',' CSV HEADER;




CREATE TABLE deliveries (
	match_id integer ,
	inning integer ,
	batting_team varchar ,
	bowling_team varchar ,
	over integer ,
	ball integer ,
	batsman varchar ,
	non_striker varchar ,
	bowler varchar ,
	is_super_over integer ,
	wide_runs integer ,
	bye_runs integer ,
	legbye_runs integer ,
	noball_runs integer ,
	penalty_runs integer ,
	batsman_runs integer ,
	extra_runs integer ,
	total_runs integer ,
	player_dismissed varchar ,
	dismissal_kind varchar ,
	fielder varchar
);


COPY deliveries FROM '/tmp/deliveries.csv' DELIMITER ',' CSV HEADER;
