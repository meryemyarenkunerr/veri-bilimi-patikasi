-- Ödev 12
-- 1. 
select title from film
where length > (
	select avg(length) 
	from film
)

-- 2. 
select count(distinct(title)) from film
where rental_rate = (
	select max(rental_rate) 
	from film
)

-- 3. 
select * from film
where rental_rate = (
	select min(rental_rate) 
	from film
) and replacement_cost = (
	select min(replacement_cost) 
	from film
)

-- 4. 
select customer_id from payment
group by customer_id
having count(payment_id) = (
	select max(payment_count)
	from (
		select count(payment_id) as payment_count
		from payment
		group by customer_id
	)
)




