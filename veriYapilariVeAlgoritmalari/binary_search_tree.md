# Binary Search Tree Projesi

## Proje 1

    [7, 5, 1, 8, 3, 6, 0, 9, 4, 2] -> Binary Search Tree

**Yukarıdaki dizinin sort türüne göre aşamalarını yazınız.**

Binary Search Tree (BST), her düğümün sol alt ağacında bulunan tüm elemanların kendinden küçük ve sağ alt ağacında bulunantüm elemanların kendinden büyük olduğu bir ağaç yapısıdır. Veri arama, ekleme ve silme işlemleri için oldukça etkili bir yapıdır.

```
Adım 1: 7 kök düğüm olarak eklenir
    7

Adım 2: 5, 7'den küçük olduğu için sol ağaca eklenir
      7
     /
    5

Adım 3: 1, 7 ve 5'den küçük olduğu için 5'in sol ağacına eklenir
      7
     /
    5
   /
  1

Adım 4: 8, 7'den büyük olduğu için sağ ağaca eklenir
      7
     / \
    5   8
   /
  1

Adım 5: 3, 7 ve 5'den küçük ama 1'den büyük olduğu için 1'n sağ ağacına eklenir
      7
     / \
    5   8
   /
  1
   \
    3

Adım 6: 6, 7'den küçük ama 5'den büyük olduğu için 5'in sağ ağacına eklenir
      7    
     / \
    5   8
   / \
  1   6
   \
    3

Adım 7: 0, 7, 5 ve 1'den küçük olduğu için 0'ın sol ağacına eklenir
      7
     / \
    5   8
   / \
  1   6
 / \
0   3

Adım 8: 9, 7 ve 8'den büyük olduğu için 8'in sağ ağacına eklenir
      7
     / \
    5   8
   / \   \
  1   6   9
 / \
0   3

Adım 9: 4, 7 ve 5'den küçük ama 1 ve 3'den büyük olduğu için 3'ün sağına eklenir
      7
     / \
    5   8
   / \   \
  1   6   9
 / \
0   3
     \
      4

Adım 10: 2, 7, 5 ve 3'den küçük ama 1'den büyük olduğu için 3'ün soluna eklenir
      7
     / \
    5   8
   / \   \
  1   6   9
 / \
0   3
   / \
  2   4
```