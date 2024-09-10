-- Ödev 8
-- 1.
CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);

-- 2.
insert into employee (name, email, birthday) values ('Cheston', 'csowerbutts0@webmd.com', '1916-06-16');
insert into employee (name, email, birthday) values ('Trixi', 'thatwells1@house.gov', '1924-04-03');
insert into employee (name, email, birthday) values ('Henrietta', 'htedorenko2@mediafire.com', '1912-07-07');
insert into employee (name, email, birthday) values ('Bathsheba', 'blawrie3@wiley.com', '1948-06-09');
insert into employee (name, email, birthday) values ('Katha', 'krhodus4@sakura.ne.jp', '1959-06-15');
insert into employee (name, email, birthday) values ('Fran', 'faubert5@cbsnews.com', '1979-01-08');
insert into employee (name, email, birthday) values ('Cleon', 'czorener6@studiopress.com', '1962-09-20');
insert into employee (name, email, birthday) values ('Allix', 'aandrosik7@nifty.com', '1903-11-11');
insert into employee (name, email, birthday) values ('Michale', 'mdegiorgio8@businesswire.com', '1906-04-18');
insert into employee (name, email, birthday) values ('Euphemia', 'emaddock9@smugmug.com', '1921-12-24');
insert into employee (name, email, birthday) values ('Pooh', 'pboucha@indiatimes.com', '1928-08-10');
insert into employee (name, email, birthday) values ('Lianna', 'lmoreinisb@newyorker.com', '1916-07-09');
insert into employee (name, email, birthday) values ('Beverlee', 'bolekc@simplemachines.org', '1991-06-19');
insert into employee (name, email, birthday) values ('Kevina', 'kstuddald@blog.com', '1999-05-10');
insert into employee (name, email, birthday) values ('Bent', 'bortelte@nps.gov', '1977-12-02');
insert into employee (name, email, birthday) values ('Donny', 'ddoxeyf@forbes.com', '1984-01-28');
insert into employee (name, email, birthday) values ('Anatole', 'alewsieg@fotki.com', '1954-03-13');
insert into employee (name, email, birthday) values ('Christoph', 'cgodilingtonh@soundcloud.com', '1978-06-28');
insert into employee (name, email, birthday) values ('Adaline', 'ahobsoni@theglobeandmail.com', '1967-08-29');
insert into employee (name, email, birthday) values ('Emmey', 'esaylej@cpanel.net', '1934-04-14');
insert into employee (name, email, birthday) values ('Aretha', 'awyonk@homestead.com', '1913-03-17');
insert into employee (name, email, birthday) values ('Seward', 'struesdalel@nature.com', '1924-12-13');
insert into employee (name, email, birthday) values ('Sarge', 'sladloem@cdc.gov', '1931-11-20');
insert into employee (name, email, birthday) values ('Nerissa', 'nmanifieldn@youtube.com', '1943-07-27');
insert into employee (name, email, birthday) values ('Brittani', 'bbatterso@posterous.com', '1973-04-11');
insert into employee (name, email, birthday) values ('Fonsie', 'fpunshonp@sbwire.com', '1970-11-23');
insert into employee (name, email, birthday) values ('Suzie', 'srowledgeq@dion.ne.jp', '1977-08-28');
insert into employee (name, email, birthday) values ('Boothe', 'bsarrellr@hostgator.com', '1969-07-17');
insert into employee (name, email, birthday) values ('Averil', 'agillivries@furl.net', '1987-06-29');
insert into employee (name, email, birthday) values ('Edgar', 'esavinet@gravatar.com', '1968-08-11');
insert into employee (name, email, birthday) values ('Fernando', 'fshaplinu@cnbc.com', '1957-08-10');
insert into employee (name, email, birthday) values ('Homerus', 'hmateescuv@sohu.com', '1935-09-21');
insert into employee (name, email, birthday) values ('Denny', 'ddumphryw@unicef.org', '1909-05-13');
insert into employee (name, email, birthday) values ('Baxter', 'bbeebex@disqus.com', '1952-10-02');
insert into employee (name, email, birthday) values ('Marcellus', 'mbreakspeary@narod.ru', '1913-05-30');
insert into employee (name, email, birthday) values ('Crystie', 'csteensonz@soundcloud.com', '1949-01-12');
insert into employee (name, email, birthday) values ('Jasun', 'jpheazey10@rakuten.co.jp', '1991-02-22');
insert into employee (name, email, birthday) values ('Trish', 'tstiddard11@yale.edu', '1988-12-18');
insert into employee (name, email, birthday) values ('Alaster', 'arosenberg12@ehow.com', '1913-05-24');
insert into employee (name, email, birthday) values ('Ricki', 'rrounsivall13@bloglovin.com', '1933-09-04');
insert into employee (name, email, birthday) values ('Pamela', 'pheathfield14@fema.gov', '1995-06-19');
insert into employee (name, email, birthday) values ('Hilly', 'hkentwell15@npr.org', '1985-05-04');
insert into employee (name, email, birthday) values ('Ellyn', 'eleuty16@mapy.cz', '1935-10-14');
insert into employee (name, email, birthday) values ('Obidiah', 'omoger17@nydailynews.com', '1912-12-17');
insert into employee (name, email, birthday) values ('Karel', 'kolner18@google.de', '1946-10-16');
insert into employee (name, email, birthday) values ('Shane', 'sboundley19@blogtalkradio.com', '1924-11-29');
insert into employee (name, email, birthday) values ('Iggie', 'idelamaine1a@jiathis.com', '2000-04-04');
insert into employee (name, email, birthday) values ('Amalita', 'apoter1b@last.fm', '1923-10-28');
insert into employee (name, email, birthday) values ('Conrad', 'cfoxten1c@state.tx.us', '1972-03-17');
insert into employee (name, email, birthday) values ('Joane', 'jpocklington1d@sakura.ne.jp', '1932-03-13');

-- 3. 
UPDATE employee
SET name = 'XXX'
WHERE id = 11;

UPDATE employee
SET email = 'YYY@YYY.com'
WHERE id = 34;

UPDATE employee
SET birthday = '1980-01-01'
WHERE id = 45;

UPDATE employee
SET name = 'AAA',
	email = 'AAA@AAA.com'
WHERE id = 12;

UPDATE employee
SET name = 'SSS',
	birthday = '1980-01-01'
WHERE id = 9;

SELECT * FROM employee
WHERE id IN (9, 11, 34, 12, 45);

-- 4.
DELETE FROM employee
WHERE name = 'XXX';

DELETE FROM employee
WHERE email = 'YYY@YYY.com';

DELETE FROM employee
WHERE id = 45;

DELETE FROM employee
WHERE name = 'AAA';

DELETE FROM employee
WHERE name = 'SSS';

SELECT * FROM employee
WHERE id IN (9, 11, 34, 12, 45);
