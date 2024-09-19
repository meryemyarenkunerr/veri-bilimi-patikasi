-- JOIN Yapıları

-- INNER JOIN : simetriktir, tabloların yerini değiştirmek sonucu etkilemez
-- bir kitabın ismi ve o kitabın yazarının adı-soyadı bilgilerini istersek;
SELECT title, first_name, last_name FROM book
INNER JOIN author ON book.author_id = author.id;

-- JOIN tek başına yazıldığında da varsayılan olarak INNER JOIN kabul edilir;
SELECT title, first_name, last_name FROM book
JOIN author ON book.author_id = author.id;


-- yazdırılacak sütunların hangi tablolardan alınacağını da belirtebiliriz;
SELECT book.title, author.first_name, author.last_name FROM book
INNER JOIN author ON book.author_id = author.id;

-- LEFT JOIN : simetrik değil, önce ilk tabloyu alır ve ikinci tabloyla eşleşenleri alır
-- bir yazarın adı-soyadı bilgisini ve o yazara ait kitabın ismini almak istersek;
SELECT title, first_name, last_name FROM author
LEFT JOIN book ON book.author_id = author.id;   -- önce yazarları al, daha sonra eşleşenleri doldur
                                                -- bazı yazarlar için book tablosunda değer bulunmadığından 
												 -- kitap isimlerinde null yazıyor

-- bir kitabın adı ve o kitabın yazarının adı-soyadı bilgisini almak istersek;
SELECT title, first_name, last_name FROM author
LEFT JOIN book ON book.author_id = author.id;   -- önce kitapları al, daha sonra eşleşenleri doldur
                                                -- her kitabın bir yazarı bulunduğundan null değer yok
                                                -- eğer olsaydı first_name ve last_name kısımlarında null yazacaktı

-- RIGHT JOIN : simetrik değil, önce ikinci tabloyu alır ve birinci tabloyla eşleşenleri alır
-- LEFT JOIN, RIGHT JOIN'in tersidir.

-- FULL JOIN : simetriktir, tüm tabloların verilerini alır
SELECT * FROM author
FULL JOIN book ON book.author_id = author.id;   -- ortak olmayan verileri de görürüz

-- UNION : birden fazla SELECT sorgusunu birleştirir
(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION    -- ALL eklemek eşleşen girdilerin de tek tek gözükmesini sağlar
(
SELECT * from book
ORDER BY title
LIMIT 5
)

-- illaki aynı tablodan olmak zorunda değil, ama sütun sayıları eşit olmalı ve veri tipleri uyumlu olmalı
(
SELECT id, email FROM author
)
UNION
(
SELECT id, title FROM book
)

-- INTERSECT & EXCEPT -> (illaki aynı tablodan olmak zorunda değil, ama sütun sayıları eşit olmalı ve veri tipleri uyumlu olmalı)
-- INTERSECT : kesişim
(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 10
)
INTERSECT
(
SELECT * from book
ORDER BY title
LIMIT 10
)

-- EXCEPT : ilk sorguda bulunan ama diğer sorguda bulunmayan girdileri bulur
(
SELECT * FROM book
ORDER BY page_number DESC
LIMIT 5
)
EXCEPT
(
SELECT * from book
ORDER BY title
LIMIT 5
)
