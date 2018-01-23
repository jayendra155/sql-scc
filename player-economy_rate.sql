update player set economy_rate = round(1.0*total_runs_given/overs_bowled,2) where overs_bowled>0;
