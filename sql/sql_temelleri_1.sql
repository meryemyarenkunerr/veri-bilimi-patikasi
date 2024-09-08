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


