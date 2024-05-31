CREATE or REPLACE VIEW 
	view_wizard_deposits_with_expiration_date_before_1983_08_17 
AS 
SELECT 
	CONCAT(first_name, ' ', last_name) AS wizard_name,
	deposit_start_date as start_date,
	deposit_expiration_date as expiration_date,
	deposit_amount as amount
	
FROM 
	wizard_deposits
	
WHERE 
	deposit_expiration_date <= '1983-08-17'
GROUP by
	wizard_name, deposit_start_date, deposit_expiration_date, deposit_amount
ORDER by expiration_date;

select  * FROM view_wizard_deposits_with_expiration_date_before_1983_08_17