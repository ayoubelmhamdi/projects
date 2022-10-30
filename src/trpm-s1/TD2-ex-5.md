# EXERCICE

On veut écrire un programme, permettant de convertir un nombre décimal \\(n\\) en binaire selon la méthode suivante :
1. Tant que le nombre décimal est différent de zéro, on le divise par deux et on met le reste de la division dans un tableau

2. On inverse ensuite les éléments du tableau pour obtenir le nombre codé en binaire.

### Exemple :
le nombre 13 vaut 1101 en binaire  
Pour ce faire on procède de la manière suivante :


- Écrire une fonction `inverser` qui permet, d'inverser les éléments d'un tableau.

- Écrire une fonction `convertir` qui permet de convertir un nombre décimal en binaire selon la méthode ci-dessus.

- Écrire une fonction `affiche` qui permet d'afficher les éléments d'un tableau.
- Écrire le programme principal qui permet de tester ces fonctions dont les prototypes sont:

<div class="tabbed-blocks">

```c
void inverser(int *tab, int nb);
void convertir (int N, int *bin, int *nb);
void affiche (int *tab, int nb);
```
</div>

# CORRECTION

<div class="tabbed-blocks">


```c
{{#include ../c/trpm-s1/TD2-ex-5.c}}
```

```matlab
{{#include ../matlab/trpm-1/TD2-ex-5.m}}
```

</div>
