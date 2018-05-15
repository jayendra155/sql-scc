update player set best_figures_wicket = ISNULL((
SELECT max(wickets_taken) from player_stat_per_match where player_id=player.id group by player_id
),0)


update player set best_figures_runs_given = ISNULL((
	SELECT min(runs_given) from player_stat_per_match where wickets_taken = player.best_figures_wicket and player_id = player.id group by player_id
),0)
