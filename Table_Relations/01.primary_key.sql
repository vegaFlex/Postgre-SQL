CREATE TABLE products (
	product_name VARCHAR(100)
);


INSERT INTO
	products
	
VALUES	
	('Broccoli'),
	('Shampoo'), 
	('Toothpaste'), 
	('Candy');



ALTER TABLE products
ADD COLUMN 
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;

--  product_name             ->   id
-- character varying (100)   ->  [PK] integer
-- ================================================
--        Broccoli           ->      	1
--        Shampoo	          ->      	2
--     Toothpaste	          ->      	3
--         Candy	          ->      	4
==============================================
