ALTER TABLE 
	countries
ADD COLUMN 
	capital_code CHAR(2);
	
UPDATE
	 countries
SET 
	capital_code = SUBSTRING(capital from 1 FOR 2) -- SUBSTRING(capital, 1, 2)
RETURNING *