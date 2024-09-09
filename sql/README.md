# SQL Projeleri
Projelerde kullanılan veritabanına [linkten](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/) ulaşabilirsiniz.

Aşağıdaki sorgu senaryolarını **dvdrental** örnek veritabanı üzerinde gerçekleştiriniz.
## Ödev 1

1. **film** tablosunda bulunan **title** ve **description** sütunlarındaki verileri sıralayınız.
2. **film** tablosunda bulunan tüm sütunlardaki verileri **length** değeri 60 dan büyük *VE* 75 ten küçük olma koşullarıyla sıralayınız.
3. **film** tablosunda bulunan tüm sütunlardaki verileri **rental_rate** 0.99 *VE* **replacement_cost** 12.99 *VEYA* 28.99 olma koşullarıyla sıralayınız.
4. **customer** tablosunda bulunan **first_name** sütunundaki değeri 'Mary' olan müşterinin **last_name** sütunundaki değeri nedir?
5. **film** tablosundaki **length** değeri 50 ten büyük *OLMAYIP* aynı zamanda **rental_rate** değeri 2.99 *VEYA* 4.99 *OLMAYAN* verileri sıralayınız.

## Ödev 2

1. **film** tablosunda bulunan tüm sütunlardaki verileri **replacement_cost** değeri 12.99 dan büyük eşit *VE* 16.99 küçük olma koşuluyla sıralayınız *(BETWEEN - AND yapısını kullanınız.)*
2. **actor** tablosunda bulunan **first_name** ve **last_name** sütunlardaki verileri **first_name** 'Penelope' *VEYA* 'Nick' *VEYA* 'Ed' değerleri olması koşuluyla sıralayınız. *(IN operatörünü kullanınız.)*
3. **film** tablosunda bulunan tüm sütunlardaki verileri **rental_rate** 0.99, 2.99, 4.99 *VE* **replacement_cost** 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. *(IN operatörünü kullanınız.)*

## Ödev 3

1. **country** tablosunda bulunan **country** sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
2. **country** tablosunda bulunan **country** sütunundaki ülke isimlerinden en az 6 karakterden oluşan *VE* sonu 'n' karakteri ile sonlananları sıralayınız.
3. **film** tablosunda bulunan **title** sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
4. **film** tablosunda bulunan tüm sütunlardaki verilerden **title** 'C' karakteri ile başlayan *VE* **length** değeri 90 dan büyük olan *VE* **rental_rate** 2.99 olan verileri sıralayınız.

## Ödev 4

1. **film** tablosunda bulunan **replacement_cost** sütununda bulunan *birbirinden farklı* değerleri sıralayınız.
2. *film* tablosunda bulunan *replacement_cost* sütununda *birbirinden farklı kaç tane* veri vardır?
3. **film** tablosunda bulunan **title** değerlerinden *kaç tanesi* T karakteri ile başlar *VE* aynı zamanda **rating** 'G' ye eşittir?
4. *country* tablosunda bulunan **country** değerlerinden *kaç tanesi* 5 karakterden oluşmaktadır?
5. **city** tablosundaki **city** değerlerinden *kaç tanesi* 'R' veya r karakteri ile biter?

## Ödev 5

1. **film** tablosunda bulunan ve **title** değeri 'n' karakteri ile biten *en uzun 5 filmi* sıralayınız.
2. **film** tablosunda bulunan ve **title** değeri 'n' karakteri ile biten *en kısa ikinci 5 filmi* sıralayınız.
3. **customer** tablosunda bulunan **last_name** sütununa göre azalan yapılan sıralamada **store_id** 1 olmak koşuluyla *ilk 4 veriyi* sıralayınız.
