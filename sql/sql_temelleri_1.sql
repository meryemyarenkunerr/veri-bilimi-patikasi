-- SQL Temelleri 1

-- SELECT Komutu
SELECT * FROM film;
SELECT first_name, last_name FROM actor;

-- WHERE Komutu
SELECT * FROM film
WHERE replacement_cost = 14.99;

SELECT * FROM film
WHERE rental_rate = 0.99;

SELECT * FROM actor
WHERE first_name = 'Penelope';

SELECT * FROM film
WHERE length < 90;

SELECT * FROM film
WHERE rental_rate >= 1;

SELECT * FROM film
WHERE rental_rate != 0.99;

-- Mantıksal Operatörler
SELECT first_name, last_name FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroe';

SELECT first_name, last_name FROM actor
WHERE first_name = 'Penelope' OR first_name = 'Bob';

SELECT * FROM film
WHERE rental_rate = 4.99 AND rental_duration = 3 AND replacement_cost > 20;

SELECT * FROM film
WHERE replacement_cost > 20 AND replacement_cost < 50;

SELECT * FROM film
WHERE NOT rental_rate = 4.99;

SELECT * FROM film
WHERE NOT rental_rate = 4.99 AND replacement_cost = 20.99;

SELECT * FROM film
WHERE NOT (rental_rate = 4.99 AND replacement_cost = 20.99);

SELECT * FROM film
WHERE NOT (NOT (rental_rate = 4.99 AND replacement_cost = 20.99));

SELECT * FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroe' OR first_name = 'Bob';

-- BETWEEN ve IN Komutları
SELECT title, length FROM film
WHERE length >= 90 AND length <= 120;

SELECT title, length FROM film
WHERE length BETWEEN 90 AND 120;

SELECT title, length FROM film
WHERE length NOT BETWEEN 90 AND 120;

SELECT * FROM film
WHERE length IN (50, 60, 90);

SELECT * FROM film
WHERE length NOT IN (50, 60, 90);

-- LIKE ve ILIKE Komutları
-- '%' hiç veya birden fazla karakteri tutar
SELECT * FROM customer
WHERE first_name LIKE'M%';

SELECT * FROM customer
WHERE first_name LIKE'Mary%';

SELECT * FROM customer
WHERE first_name LIKE'%y';

SELECT * FROM customer
WHERE first_name LIKE'A%y';

SELECT * FROM customer
WHERE first_name LIKE'A%' AND last_name LIKE 'A%';

SELECT * FROM customer
WHERE first_name ILIKE'a%';

SELECT * FROM customer
WHERE first_name NOT LIKE'M%';

-- '_' tek bir karakter için yer tutar
SELECT * FROM customer
WHERE first_name LIKE 'J_';

SELECT * FROM customer
WHERE first_name LIKE 'T_m';

-- LIKE = ~~
-- ILIKE = ~~*

SELECT * FROM customer
WHERE first_name ~~ 'T_m';

SELECT * FROM customer
WHERE first_name ~~* 't_m';

-- DISTINCT ve COUNT Komutları
SELECT DISTINCT rental_rate FROM film;

SELECT DISTINCT replacement_cost FROM film;

SELECT DISTINCT rental_rate, replacement_cost FROM film;

SELECT COUNT(*) FROM actor
WHERE first_name = 'Penelope';

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'A%';

SELECT COUNT(*) FROM actor;
SELECT DISTINCT first_name FROM actor;
SELECT COUNT(DISTINCT first_name) FROM actor;

SELECT COUNT(*) FROM film;               -- tabloda kaç tane satır var
SELECT COUNT(DISTINCT length) FROM film; -- tabloda kaç tane 'farklı' uzunluk değeri var
