SELECT
	prod.name as product_name,
	ROUND(AVG(prod.price), 2) AS average_price,
	COUNT(fb.id) as total_feedbacks
	
FROM products as prod
JOIN feedbacks as fb on fb.product_id = prod.id
WHERE prod.price > 15
GROUP BY product_name
HAVING COUNT(fb.id) > 1
ORDER BY total_feedbacks;