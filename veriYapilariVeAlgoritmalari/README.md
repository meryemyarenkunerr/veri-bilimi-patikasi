# Insertion and Selection Sort Projeleri
## Proje 1.1

    [22,27,16,2,18,6] -> Insertion Sort

**Yukarı verilen dizinin sort türüne göre aşamalarını yazınız.**

Insertion Sort, küçükten büyüğe ya da büyükten küçüğe sıralama yapmak için kullanılan bir sıralama algoritmasıdır.

Başlangıçta ilk elemanı sıralı kabul ederiz, daha sonrasında ikinci elemanı ilk elemanla kıyaslarız ve eğer ikinci eleman ilk elemandan daha küçükse yerlerini değiştiririz. Daha sonrasında üçüncü elemanı ikinci elemanla kıyaslarız, eğer üçüncü elaman ikinci elemandan küçükse iki ve üçüncü elemanları da yer değiştiriz ve bu işlen üçüncü elemanın yeri bulunana kadar listenin başına doğru devam eder ama eğer üçüncü eleman ikinci elemandan küçük değilse o zaman üçüncü elemanın yeri bulunmuştur ve dördüncü elemana geçilir.

Kısacası Insertion Sort her elemanın kendisinden önceki eleman(lar)la kıyaslanarak doğru yere yerleştirildiği bir sıralama algoritmasıdır.

```
1. Adım: [22] -> sıralı kabul edilir

2. Adım: [22, 27] -> 22 ve 27 kıyaslanır ve sıralanır
         [22, 27]

3. Adım: [22, 27, 16] -> 16 ve 27 kıyaslanır ve sıralanır
         [22, 16, 27] -> 16 ve 22 kıyaslanır ve sıralanır
         [16, 22, 27]

4. Adım: [16, 22, 27, 2] -> 2 ve 27 kıyaslanır ve sıralanır
         [16, 22, 2, 27] -> 2 ve 22 kıyaslanır ve sıralanır
         [16, 2, 22, 27] -> 2 ve 16 kıyaslanır ve sıralanır
         [2, 16, 22, 27] -> 2 ve 16 kıyaslanır ve sıralanır

5. Adım: [2, 16, 22, 27, 18] -> 18 ve 27 kıyaslanır ve sıralanır
         [2, 16, 22, 18, 27] -> 18 ve 22 kıyaslanır ve sıralanır
         [2, 16, 18, 22, 27] -> 18 ve 16 kıyaslanır ve sıralanır
         [2, 16, 18, 22, 27]

6. Adım: [2, 16, 18, 22, 27, 6] -> 6 ve 27 kıyaslanır ve sıralanır
         [2, 16, 18, 22, 6, 27] -> 6 ve 22 kıyaslanır ve sıralanır
         [2, 16, 18, 6, 22, 27] -> 6 ve 18 kıyaslanır ve sıralanır
         [2, 16, 6, 18, 22, 27] -> 6 ve 16 kıyaslanır ve sıralanır
         [2, 6, 16, 18, 22, 27] -> 6 ve 2 kıyaslanır ve sıralanır
         [2, 6, 16, 18, 22, 27]
```

**Big-O gösterimini yazınız.**

Insertion Sort algoritmasının Big-O gösterimi O(n^2)'dir.

**Dizi sıralandıktan sonra 18 sayısı aşağıdaki case'lerden hangisinin kapsamına girer? Yazınız.**

1. Average case: Aradığımız sayının ortada olması
2. Worst case: Aradığımız sayının sonda olması
3. Best case: Aradığımız sayının dizinin en başında olması.

Sıralanmış dizide 18 sayısı dizinin ne en başında ne de en sonundadır. Bu sebeple 18 sayısı *average case* durumundadır.

## Proje 1.2
    [7, 3, 5, 8, 2, 9, 4, 15, 16] -> Selection Sort

**Yukarıdaki dizinin verilen sıralama algoritmasına göre ilk 4 adımını yazınız.**

Selection Sort, temel çalışma prensibi her seferinde dizinin geri kalanındaki en büyük veya en küçük elemanı bularak bulduğu bu elemanları dizinin başından başlayarak yerleştirmek olan bir sıralama algoritmasıdır.

```
[7, 3, 5, 8, 2, 9, 4, 15, 16]

1. Adım: Tüm dizinin en küçüğünü (2) listenin başındaki elemanla (7) değiştirir
         [2, 3, 5, 8, 7, 9, 4, 15, 16]

2. Adım: İlk eleman hariç dizinin geri kalanındaki en küçüğü (3) ikinci sıradaki elemanla (3) değiştirir
         [2, 3, 5, 8, 7, 9, 4, 15, 16]

3. Adım: İlk iki eleman hariç dizinin geri kalanındaki en küçüğü (4) üçüncü sıradaki elemanla (5) değiştirir
         [2, 3, 4, 8, 7, 9, 5, 15, 16]

4. Adım: İlk üç eleman hariç dizinin geri kalanındaki en küçüğü (5) üçüncü sıradaki elemanla (8) değiştirir
         [2, 3, 4, 5, 7, 9, 8, 15, 16]
```
