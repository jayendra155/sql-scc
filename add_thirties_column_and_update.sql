ALTER TABLE player ADD thirties int NOT NULL default 0;

update player set thirties = 
                    ISNULL((select count(*) from player_stat_per_match where 
                                runs_scored is not null and 
                                runs_scored>=30 and 
                                runs_scored<50 and 
                                player_id = player.id 
                                group by player_id),0) ;
