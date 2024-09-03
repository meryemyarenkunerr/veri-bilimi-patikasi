# Merge Sort Projesi

## Proje 1

    [16, 21, 11, 8, 12, 22] -> Merge Sort

**Yukarıdaki dizinin sort türüne göre aşamalarını yazınız.**

Merge Sort, *"divide and conquer"* yaklaşımını kullanan bir sıralama algoritmasıdır.

Bu algoritma ile liste önce küçük parçalara bölünür, ardından her parça kendi içerisinde sıralanır ve en sonrunda tüm parçalar tekrar birleştirilir.

```
PARÇALAMA 
Adım 1: Listeyi ortadan ikiye böl
    ->   [16, 21, 11]      [8, 12, 22]    

Adım 2: Sol ve Sağ parçaları tekrar ikiye böl
    ->  [16, 21]  [11]    [8]  [12, 22]

Adım 3: Sol parçanın solundaki parçayı ve sağ parçanın sağındaki parçayı da ikiye böl
    -> [16]  [21]  [11]  [8]  [12]  [22]

BİRLEŞTİRME
Adım 4: [16] ve [21] parçalarını sıralayarak birleştir
    -> [16, 21]

Adım 5: [8] ve [12] parçalarını sıralayarak birleştir
    -> [8, 12]

Adım 6: [11] ve [16, 21] parçalarını sırala ve birleştir
    -> [11, 16, 21]

Adım 7: [8, 12] ve [22] parçalarını sıralayarak birleştir
    -> [8, 12, 22]

Adım 8: [11, 16, 21] ve [8, 12, 22] parçalarını sıralayarak birleştir
    -> [8, 11, 12, 16, 21, 22]
```

**Big-O gösterimini yazınız.**

Merge Sort algoritmasının Big-O gösterimleri;

1. Zaman: O(nlogn) 
2. Uzay: O(n) (birleştirme işleminde ekstra alan gerktirir)