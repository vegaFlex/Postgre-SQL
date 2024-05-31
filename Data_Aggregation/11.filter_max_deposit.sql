SELECT 
	magic_wand_creator,
	MAX(deposit_amount) as max_deposit_amount
	
FROM 
	wizard_deposits
GROUP by
	magic_wand_creator
HAVING MAX(deposit_amount) NOT BETWEEN 20000 AND 40000
-- HAVING
-- 	MAX(deposit_amount) < 20000       -- #TRUE
-- 		OR 
-- 	MAX(deposit_amount) > 40000
ORDER by
	max_deposit_amount DESC
LIMIT 3;