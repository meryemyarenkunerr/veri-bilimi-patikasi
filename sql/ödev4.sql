-- Ödev 4
-- 1. 
SELECT DISTINCT replacement_cost FROM film;

-- 2. 
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- 3.
SELECT COUNT(*) FROM film
WHERE title ~~ 'T%' AND rating = 'G';

-- 4.
SELECT COUNT(DISTINCT country) FROM country
WHERE country LIKE '_____';

-- 5.
SELECT COUNT(DISTINCT city) FROM city
WHERE city ~~* '%r' OR city ~~* 'r%';
