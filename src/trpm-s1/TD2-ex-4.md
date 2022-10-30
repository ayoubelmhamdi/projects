### Problème :
---------------

On a deux tableaux `tab1` et `tab2` (de dimensions respectives \\(\mathbf{n}\\) et \\(\mathbf{m}\\)).

- Fusionner les éléments de `tab1` et `tab2` dans un troisième tableau `tab3`` trié par ordre croissant.

### Méthode :

1. Trier `tab1` et `tab2` par ordre croissant (créer une fonction `void tri_tableau (int tab], int n)`).

2. Utiliser trois indices \\(i, j\\) et \\(k\\).

    - Comparer `tab1[i]` et `tab2[i]`
    - remplacer `tab3[k]` par le plus petit des deux éléments
    - avancer dans le tableau `tab3` et dans le tableau qui a contribué son élément.

Lorsque l’un des deux tableaux `tab1` ou `tab2` est épuisé, il suffit de recopier les éléments restants de l’autre tableau dans le tableau `tab3`.


<div class="tabbed-blocks">


```c
{{#include ../c/trpm-s1/TD2-ex-4.c}}
```

```matlab
{{#include ../matlab/trpm-1/TD2-ex-4.m}}
```

</div>
