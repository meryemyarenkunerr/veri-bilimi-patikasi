-- Genel Tekrar
-- 1. 
select * from film
where title like 'K%' 
order by length desc, replacement_cost asc
limit 4;

-- 2. 
select rating 
from film
group by rating
having count(rating) = (
	select max(rating_count)
	from (
		select count(*) as rating_count
		from film
		group by rating
	)
)

-- 3. 
select customer.first_name, customer.last_name
from customer
join payment on payment.customer_id = customer.customer_id
group by customer.first_name, customer.last_name
having count(payment_id) = (
	select max(total_payment)
	from (
		select count(payment_id) as total_payment
		from payment
		group by customer_id
	)
)

-- 4. 
select category.name, count(*) from category
join film_category on film_category.category_id = category.category_id
join film on film.film_id = film_category.film_id
group by category.name;

-- 5. 
select title 
from film
where title ilike '%e%e%e%e%';