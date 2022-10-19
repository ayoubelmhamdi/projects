# PGCD - Algorithme d’Euclide
-----------------------------

Écrire un programme qui calcule le `PGCD` de deux nombres préalablement saisis, Ce programme devra utiliser l’algorithme d’Euclide :

Soient \\(a\\) et \\(b\\) deux nombres entiers tels que \\(a<b\\) :

- Si \\(a\\) divise \\(b\\), dans ce cas le PGCD de \\(a\\) et \\(b\\) est \\(a\\).

En effet, \\(a\\) divise \\(a\\) et \\(a\\) divise \\(b\\), il n’y a donne pas de nombre plus grand que \\(a\\) qui divise \\(a\\) et \\(b\\).

- Si \\(a\\) ne divise pas \\(b\\). Dans ce cas, il existe deux nombres \\(q\\) et \\(r\\) qui sont respectivement le quotient et le reste de la division euclidienne (entière) de \\(b\\) par \\(a\\).

On a \\(b=q a+r\\). On pose alors \\(b arrow a\\) et \\(a arrow r\\) et on recommence : il existe deux nombres \\(r\\) et \\(q\\) tel que \\(b=q a+r\\) ainsi de suite jusqu’à ce que l’on trouve un reste nul.
Le PGCD sera le dernier reste non nul.

Exemple : PGCD de 960 et 108.

-  \\(960=8 * 108+96\\)
On remplace 960 par 108 et 108 par 96 et on recommence.

-  \\(108=1 * 96+12\\)
On remplace 108 par 96 et 96 par 12 et on recommence.

-  \\(96=8 * 12+0\\)
Le dernier reste est 0, donc on s’arrête là.

Le PGCD est le dernier reste non nul : c’est 12.

**Remarque :** Si le PGCD de deux nombres est égal à 1 alors, on dit que ces deux nombres sont premiers entre eux.


<div class="tabbed-blocks">


```c
{{#include ../c/trpm-s1/TD1-ex-7.c}}
```

```matlab
{{#include ../matlab/trpm-1/TD1-ex-7.matlab}}
```
</div>
