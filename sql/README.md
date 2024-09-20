# SQL Projeleri
Projelerde kullanılan veritabanına [linkten](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/) ulaşabilirsiniz.

Aşağıdaki sorgu senaryolarını **dvdrental** örnek veritabanı üzerinde gerçekleştiriniz.

## Ödev 1

1. film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
2. film tablosunda bulunan tüm sütunlardaki verileri length değeri 60 dan büyük ve 75 ten küçük olma koşullarıyla sıralayınız.
3. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 ve replacement_cost 12.99 veya 28.99 olma koşullarıyla sıralayınız.
4. customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
5. film tablosundaki length değeri 50 ten büyük olamyıp aynı zamanda rental_rate değeri 2.99 veya 4.99 olmayan verileri sıralayınız.

## Ödev 2

1. film tablosunda bulunan tüm sütunlardaki verileri replacement_cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız *(BETWEEN - AND yapısını kullanınız.)*
2. actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. *(IN operatörünü kullanınız.)*
3. film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 ve replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. *(IN operatörünü kullanınız.)*

## Ödev 3

1. country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
2. country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
3. film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
4. film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve length değeri 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

## Ödev 4

1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
2. film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
3. film tablosunda bulunan title değerlerinden kaç tanesi T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
4. country tablosunda bulunan country değerlerinden kaç tanesi 5 karakterden oluşmaktadır?
5. city tablosundaki city değerlerinden kaç tanesi 'R' veya r karakteri ile biter?

## Ödev 5

1. film tablosunda bulunan ve title değeri 'n' karakteri ile biten en uzun 5 filmi sıralayınız.
2. film tablosunda bulunan ve title değeri 'n' karakteri ile biten en kısa ikinci 5 filmi sıralayınız.
3. customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

## Ödev 6

1. film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
2. film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
3. film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun film kaç dakikadır?
4. film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

## Ödev 7

1. film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.

## Ödev 8

1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

## Ödev 9

1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

## Ödev 10

1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

## Ödev 11

1. actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
2. actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
3. actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
4. İlk 3 sorguyu tekrar eden veriler için de yapalım.

## Ödev 12

1. film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
2. film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
3. film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
4. payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

## Genel Tekrar Soruları

1. film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
2. film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
3. customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
4. category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
5. film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?