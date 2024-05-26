SELECT 
	(REGEXP_MATCHES("River Information", '[0-9]{1,4}'))[1] AS river_length
FROM 
	view_river_info;
                                        --    # Връща всички matches
	

-- Does the same thing   
-- SELECT 
-- 	SUBSTRING("River Information", '[0-9]{1,4}') AS river_length
-- FROM 
-- 	view_river_info;                # Връща дължината на реката(4 цифри)
                                        -- # Връща първият match