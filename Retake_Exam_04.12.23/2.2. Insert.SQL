CREATE TABLE gift_recipients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    country_id INT,
    gift_sent BOOLEAN DEFAULT FALSE
);

-- Assuming there exists a table `customers` with columns `first_name`, `last_name`, and `country_id`
INSERT INTO gift_recipients (name, country_id)
SELECT first_name || ' ' || last_name AS name, country_id
FROM customers;

-- Update the gift_sent column for specific country_ids
UPDATE gift_recipients
SET gift_sent = TRUE
WHERE country_id IN (7, 8, 14, 17, 26);
