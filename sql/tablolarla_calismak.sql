-- Veri Türleri
-- Numerik Veri Türleri
-- smallint         : 2 bytes  : -32768 -> +32767
-- integer          : 4 bytes  : -2147483648 -> +2147483647
-- bigint           : 8 bytes  : -9223372036854775808 -> +9223372036854775807
-- smallserial      : 2 bytes  : 1 -> +32767
-- serial           : 4 bytes  : 1 -> +2147483647
-- bigserial        : 8 bytes  : 1 -> +9223372036854775807
-- decimal          : variable : 131072 digit virgülden önce; 16383 digit virgünden sonra 
-- numeric          : variable : 131072 digit virgülden önce; 16383 digit virgünden sonra
-- real             : 4 bytes  : virgülden sonra 6 basamaklı hassasiyete sahip
-- double precision : 8 bytes  : virgülden sonra 15 basamaklı hassasiyete sahip

create table test (
	real_type REAL,
	double_type DOUBLE PRECISION,
	numeric_type NUMERIC
);

insert into test
values (
	1.12345678912345678912,
	1.12345678912345678912,
	1.12345678912345678912
);

select * from test;
--
create table test2 (
	float_4 FLOAT4,       -- real
	float_8 FLOAT8,       -- double precision
	decimal_type DECIMAL  -- numeric
);

insert into test2
values (
	1.12345678912345678912,
	1.12345678912345678912,
	1.12345678912345678912
);

select * from test2;


-- SELECT ile veri türü işlemleri
select (10.0);
select (10.0::INTEGER);
select (10.444444444444::REAL);
select (10.4444444444444444444444444444444444444::FLOAT8)


-- Karakter Veri Türleri
-- caracter varying(n), varchar(n) : limitli karakter uzunluğu
-- character(n), char(n)           : limitli karakter uzunluğu, dolmayan yerler boşluk karakterleri ile doldurulur
-- text                            : sınır yok

select ('Lorem'::CHAR(10));
select ('Lorem ipsum dolor sit amet'::CHAR(10));
select ('Lorem'::VARCHAR(10));
select ('Lorem ipsum dolor sit amet'::VARCHAR(10));
select ('Lorem ipsum dolor sit amet'::VARCHAR);
select ('Lorem'::TEXT);
select ('Lorem ipsum dolor sit amet'::TEXT);


-- Bool Veri Türleri
-- boolean : 1 byte : true(1) veya false(0)

select ('no'::BOOLEAN);
select (1::BOOLEAN);
select('f'::BOOLEAN);
select(true::BOOLEAN);
select(NULL::BOOLEAN);


-- DateTime Veri Türleri

select ('1980-12-03'::DATE);
select ('DEC-03-1980'::DATE);
select ('DEC 03 1980'::DATE);
select ('1980 December 03'::DATE);

select ('03:44'::TIME);
select ('03:44 AM'::TIME);
select ('03:44 PM'::TIME);
select ('03:44:11'::TIME);
select ('03:44'::TIME WITH TIME ZONE);

select ('1980 December 03 03:44:11'::TIMESTAMP);


-- NOT NULL ve ALTER
create table users (
	id serial primary key,
	username varchar(20),
	email varchar(50),
	age integer
);

insert into users (username, email, age)
values (
	'tester', 'tester@gmail.com', 23
);

insert into users (email, age)
values (
	'tester2@gmail.com', 34
);

select * from users;

-- Alter komutu ile sürunların özelliklerini değiştirebiliriz fakat eğer 
-- bir sütunda null değerler varsa o sütunları not null yapamayız, hata verir.

-- alter table <table_name>
-- alter column <column_name>
-- set <atribute>;

-- Öncelikle null değere sahip girdilerden kurtulunmalı;
delete from users
where username is null
returning *;

select * from users;

alter table users
alter column username
set not null;

-- insert into users (email, age)
-- values (
--	'tester2@gmail.com', 34
-- ); hata verir!

insert into users (username, email, age)
values (
	'', 'test3@gmail.com', 45
);

select * from users;


-- UNIQUE
-- eşsiz değere sahip olması gereken sütunlar için kullanılır
-- tablo oluşturulurken eklenmediyse alter komutu ile eklenir

insert into users (username, email, age)
values (
	'test4', 'tester@gmail.com', 40
);

select * from users;

-- alter table users 
-- add unique(email); hata verir çünkü birbirinin aynısı veriler var!
-- önce veriyi manuel olarak değiştirelim, daha sonrasında tekrar unique komutunu kullanalım

alter table users
add unique(email);

insert into users (username, email, age)
values (
	'test5', 'tester@gmail.com', 12
);

insert into users (username, email, age)
values (
	'test5', 'test5@gmail.com', 55
);

select * from users;


-- CHECK Kısıtlaması
-- bazı sütunlar almaması gereken değerleri alabilir, bunu önlemek için kullanılır
-- alter komutu ile gerçekleştirilir

insert into users (username, email, age)
values (
	'test6', 'test6@gmail.com', -22 -- yaş nasıl negatif olabilir?
);

select * from users;

delete from users
where age = -22;

alter table users
add check(age > 0);

insert into users (username, email, age)
values (
	'test7', 'test7@gmail.com', -22 
);

-- yeni tablo oluştururken de eklenebilir
create table products (
	product_no integer,
	name text,
	price numeric check (price > 0), -- fiyat 0'dan küçük olamaz
	discounted_price numeric check (discounted_price > 0),  -- indirimli fiyat 0'dan küçük olamaz
	check (price > discounted_price)  -- indirimli fiyat normal fiyattan fazla olamaz
);

select * from products;

insert into products (product_no, name, price, discounted_price)
values 
	(1, 'test', 10, 12);

insert into products (product_no, name, price, discounted_price)
values 
	(1, 'test', -10, 12);

insert into products (product_no, name, price, discounted_price)
values 
	(1, 'test', 12, 10);

select * from products;
