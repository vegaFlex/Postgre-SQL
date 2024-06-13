SELECT
	fb.product_id,
	fb.rate,
	fb.description,
	cus.id,
	cus.age,
	cus.gender
	
FROM feedbacks as fb
JOIN customers as cus ON fb.customer_id = cus.id

WHERE fb.rate < 5.0 and cus.gender = 'F' and cus.age > 30
ORDER by fb.product_id DESC;