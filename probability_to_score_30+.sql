
select player_name, thirties,fifties, 
		CONVERT(varchar,ROUND(100*(thirties+fifties)/innings_batted,2)) + '%'
		as probability_to_score_30_plus from player where (thirties+fifties)>0 order by player_name
