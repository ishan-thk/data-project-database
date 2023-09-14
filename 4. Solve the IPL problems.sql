-- Number of matches played per year of all the years in IPL.
select 
	m.season,
	count(*) as no_of_matches
	from matches m
	group by m.season
	order by m.season;


-- Number of matches won of all teams over all the years of IPL.
select
	m.winner,
	count(*) as no_of_matches_won
	from
		matches m 
	group by m.winner 
	order by no_of_matches_won 
	desc;


-- For the year 2016 get the extra runs conceded per team.
select
	d.bowling_team, sum(d.extra_runs) as extra_runs_conceded
	from
		matches m inner join deliveries d
	on 
		m.id = d.match_id
	where m.season = 2016
	group by d.bowling_team
	order by extra_runs_conceded
	DESC;


-- For the year 2015 get the top economical bowlers.
SELECT
        d.bowler, ROUND((SUM(d.total_runs - d.bye_runs - d.legbye_runs) / (COUNT(CASE WHEN (d.wide_runs = 0 AND d.noball_runs =0) THEN 1 ELSE 0 END) / 6.0)),2) AS economy_rate
	FROM 
		matches m INNER JOIN deliveries d 
	ON 
		m.id = d.match_id
	WHERE m.season = '2015'
	GROUP BY d.bowler
	ORDER BY economy_rate;


	
