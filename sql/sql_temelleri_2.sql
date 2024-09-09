-- SQL Temelleri 2
-- ORDER BY Komutu
-- Sıralama yapmak için kullanırız. DESC -> Azalan, ASC (Default) -> Artan.

SELECT * FROM film
ORDER BY title;

SELECT * FROM film
ORDER BY title DESC;

SELECT title, rental_rate FROM film
ORDER BY rental_rate ASC, length DESC;

SELECT title, rental_rate FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate ASC, length DESC;

SELECT title, rating, length FROM film
WHERE rating = 'G'
ORDER BY length DESC;

-- LIMIT ve OFFSET Komutları
-- LIMIT  : Belirli bir sayıda kayıt listelemek istiyorsak kullanırız
-- OFFSET : Belirli bir sayıda kayıttan sonra işlemlere başlamak istiyorsak kullanırız

SELECT * FROM film
LIMIT 20;

SELECT * FROM film
WHERE rental_rate = 4.99
ORDER BY length
LIMIT 10;

SELECT * FROM film
WHERE replacement_cost = 14.99 AND rental_rate = 0.99
ORDER BY length DESC 
LIMIT 7;

SELECT * FROM country
OFFSET 6
LIMIT 4;

SELECT * FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name
OFFSET 2
LIMIT 1;

-- Aggregate Fonksiyonlar
-- MAX() : İstenilen sütundaki en büyük değeri bulmak için kullanılır
-- MIN() : İstenilen sütundaki en küçük değeri bulmak için kullanılır

SELECT MAX(rental_rate) FROM film;
SELECT MIN(rental_rate) FROM film;

-- AVG()   : İstenilen sütunun ortalamasını bulmak için kullanılır
-- ROUND() : Ondalıklı sayılarda virgülden sonraki basamakların manipülasyonu için kullanılır

SELECT AVG(length) FROM film;
SELECT ROUND(AVG(length), 3) FROM film;

-- SUM() : İstenilen sütundaki değerleri toplamını bulmak için kullanılır

SELECT SUM(rental_rate) FROM film;

-- GROUP BY Komutu
-- Belirli bir sütuna göre kayıtları gruplandırmak için kullanılır. En az 1 adet Aggregate fonksiyona ihtiyaç duyulur.

SELECT rental_rate, MAX(length) FROM film
GROUP BY rental_rate;

SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate;

SELECT rating, COUNT(*) FROM film
GROUP BY rating;

SELECT replacement_cost, MIN(length) FROM film
GROUP BY replacement_cost;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate;

SELECT replacement_cost, rental_rate, MIN(length), COUNT(*) FROM film
GROUP BY replacement_cost, rental_rate;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY replacement_cost, rental_rate DESC;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length);

-- HAVING Komutu
-- Gruplanmış verilere komutlar eklemek için kullanılır

SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 325;

SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
HAVING COUNT(*) > 7300;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount);

-- ALIAS (Takma İsim)
SELECT first_name AS isim, last_name AS soyisim FROM actor;

SELECT first_name isim, last_name soyisim FROM actor;

SELECT first_name "isim test", last_name "soyisim test" FROM actor;

SELECT CONCAT(first_name, ' ', last_name) AS "İsim ve Soyisim" FROM actor;










