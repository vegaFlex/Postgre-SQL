CREATE TABLE passports (
	id INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 100 INCREMENT BY 1) PRIMARY KEY,
	nationality VARCHAR(50)
);	
	--МОЖЕ И ТАКА:
    --CREATE SEQUENCE starting_at_100 START 100;
	--CREATE TABLE passports (
    -- id INT DEFAULT nextval('starting_at_100') PRIMARY KEY,
    -- nationality VARCHAR(50)

CREATE TABLE passports (
    id INT DEFAULT nextval('starting_at_100') PRIMARY KEY,
    nationality VARCHAR(50)
);
INSERT INTO 
	passports(nationality)
VALUES 
	('N34FG21B'), -- 100
	('K65LO4R7'), -- 101
	('ZE657QP2'); -- 102

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	salary DECIMAL(10, 2),
	passport_id INT,
	
	CONSTRAINT fk_people_passports
	FOREIGN KEY (passport_id)
	REFERENCES passports(id)
	
	--МОЖЕ И ТАКА: - КОГАТО НЕ СЕ ИСКА ИМЕ НА КОНСТРЕЙНТА
	--passport_id INT, REFERENCES passports(id) 
);

INSERT INTO
	people (first_name, salary, passport_id)
VALUES
	('Roberto', 43300.00, 101),
	('Tom', 56100.00, 102),
	('Yana', 60200.00, 100);