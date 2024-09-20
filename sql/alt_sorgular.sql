-- Alt Sorgular

-- belirli bir kitabın sayfa sayısından daha fazla sayfa sayısına sahip
-- kitapları bul
select * from book
where page_number > (
	select page_number from book
	where title = 'Cat Run 2'
);

-- belirli bir kitabın sayfa sayısından daha fazla sayfa sayısına sahip
-- kitapların isimlerini, sayfa sayılarını, en yüksek sayfa sayısına sahip
-- kitabın sayfa sayısını ve bu kitapların en yüksek sayfa sayısından ne kadar 
-- eksik sayfa sayısına sahip olduğunu bul
select title, page_number, (select max(page_number) from book), ((select max(page_number) from book) - page_number) as differ
from book
where page_number > (
	select page_number from book
	where title = 'Cat Run 2'
);

-- ANY ve ALL Operatörleri
select first_name, last_name
from author
where id = (
	select id 
	from book 
	where title = 'Cat Run 2'
) -- sadece bir değer için izin verir

select first_name, last_name
from author
where id = any (
	select id 
	from book 
	where title = 'Cat Run 2' or title = 'Cinderella'
) -- var olan tüm değerleri döndürür

select first_name, last_name
from author
where id = all (
	select id 
	from book 
	where title = 'Cat Run 2' or title = 'Cinderella'
) -- alt sorgudan gelen değerlerin tüm satırlarla eşleşip eşleşmediğine bakar

-- '=' yerine daha farklı operatörler de kullanılabilir

select first_name, last_name
from author
where id > any (
	select id 
	from book 
	where title = 'Cat Run 2' or title = 'Cinderella'
)

select first_name, last_name
from author
where id > all (
	select id 
	from book 
	where title = 'Cat Run 2' or title = 'Cinderella'
)

-- Alt Sorgular ve JOIN 
-- kitap sayfası sayısı ortalama kitap sayfası sayısından fazla olan kitap isimlerini,
-- yazar isim ve soyisimleri ile birlikte sıralayalım.
select author.first_name, author.last_name, book.title, book.page_number 
from author
inner join book on author.id = book.author_id
where page_number > (
	select avg(page_number) 
	from book
)

-- film uzunluğu en fazla olan filmlerin isimlerini, uzunluğunu ve aktör isim ve soyisimleri
-- ile birlikte yazdıralım. (dvdrental veritabanından)
-- film ve actor tablosu arasında doğrudan bir ilişki yok, bunun için film_actor tablosunu kullanacağız
select actor.first_name, actor.last_name, film.title, film.length
from actor
join film_actor on film_actor.actor_id = actor.actor_id
join film on film_actor.film_id = film.film_id
where film.length = (
	select max(length) 
	from film
)






