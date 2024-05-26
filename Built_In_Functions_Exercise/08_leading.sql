SELECT
	continent_name,
	TRIM(LEADING FROM continent_name) AS "trim"  --# РЕЖЕ ОТ ЛЯВО САМО КАТО LTRIM
	-- TRIM(TRAILING FROM continent_name) AS "trim" --# РЕЖЕ ОТ ДЯСНО САМО КАТО РTRIM
	-- TRIM(BOTH FROM continent_name) AS "trim"     --# РЕЖЕ ОТ ДВЕТЕ СТРАНИ КАТО TRIM
	-- LTRIM(continent_name) AS "trim" -- same thing as the upper solution
FROM
	continents;
