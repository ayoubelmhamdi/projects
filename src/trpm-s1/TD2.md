# TD TRPM S2
------------

# Exercice 1
-----------

- Écrire un programme qui lit la dimension n d'un tableau tab de type entier (dimension maximale : 50 composantes).
- Remplit le tableau par des valeurs entrées au clavier et affiche le tableau.
- Effacer ensuite tous les occurrences de la valeur 0 dans le tableau `tab` et tasser les éléments restants.
- Affiche le tableau resultant.


# Exercice 2
------------

Écrire une fonction qui calcule les valeurs de \\(\sin (\alpha)\\) de tous les angles \\(\alpha\\) de 0 à 90 degrés, par pas de d \\(\alpha\\) donné.


# Exercice 3
----------

Écrire deux fonctions qui calculent la valeur de \\(x^{n}\\) pour une valeur réelle \\(x\\) (type double) et une valeur entière positive \\(n\\) (type `int`):

1. `exp1` retourne la valeur de \\(x^{n}\\) comme résultat
2. `exp2` affecte la valeur \\(x^{n}\\) à \\(x\\).

Écrire un programme qui teste les deux fonctions à l’aide des valeurs lues au clavier.


# Exercice 4
-------------

### Problème :
On a deux tableaux `tab1` et `tab2` (de dimensions respectives \\(\mathbf{n}\\) et \\(\mathbf{m}\\)).

- Fusionner les éléments de `tab1` et `tab2` dans un troisième tableau `tab3`` trié par ordre croissant.

### Méthode :

1. Trier `tab1` et `tab2` par ordre croissant (créer une fonction `void tri_tableau (int tab], int n)`).

2. Utiliser trois indices \\(i, j\\) et \\(k\\).

    - Comparer `tab1[i]` et `tab2[i]`
    - remplacer `tab3[k]` par le plus petit des deux éléments
    - avancer dans le tableau `tab3` et dans le tableau qui a contribué son élément.

Lorsque l’un des deux tableaux `tab1` ou `tab2` est épuisé, il suffit de recopier les éléments restants de l’autre tableau dans le tableau `tab3`.


# Exercice 5
------------

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
```c
void inverser(int *tab, int nb);
void convertir (int N, int *bin, int *nb);
void affiche (int *tab, int nb);
```

# Exercice 6
------------

1. Écrire la fonction `lire_dim()` à un paramètre dim, qui lit la dimension `dim` d'une matrice carrée.

2. Écrire la fonction `lire_matrice` à deux paramètres, `mat` et `l`, qui lit les valeurs d'une matrice carrée mat de type entier et de dimension `l` connue.

3. Écrire la fonction `ecrire_matrice` à deux paramètres mat et `l`, qui affiche les valeurs de la matrice carrée de dimension `l`.

4. Écrire la fonction `multi_2_matrices` qui effectue la multiplication de deux matrices `mat1` (dimensions `n`) et `mat2` (dimension `n`) dans une troisième matrice `mat3` (dimension `n`):

5. Écrire un programme qui teste ces fonctions.


# Exercice 7
----------

- Écrire un programme qui lit 10 mots et les mémorise dans un tableau de chaînes de caractères.

- Trier les 10 mots `lexicographiquement` en utilisant les fonctions `strcmp` et `strcpy`.

- Afficher le tableau trié.


# Exercice 8
------------

Écrire un programme permettant de saisir une chaîne de caractères au clavier, d'afficher cette chaine et de transformer la chaîne saisie de la manière suivante :

- Chacun des caractères de la chaine est répété autant de fois que sa position dans la chaine initiale.

- Le programme devra stocker le résultat dans une nouvelle chaîne de caractères et devra également retourner le nombre de caractères de la chaîne créée.

Exemple : `bonjour` donnera : `boonnnjjjjooooouuuuuurrrrrrr`  
Avec comme longueur de la chaîne résultat : 28.


# Exercice 9
------------

1. Écrire une fonction int `LongueurChaine (char *ch )` qui retourne le nombre de caractères que comporte la chaine `ch`.
2. Écrire une fonction void `CopieChaine( char *dest, char *src )` qui recopie le contenu de la chaîne `src` dans la chaine `dest`.

3. Écrire une fonction void `AjouteChaine( char *dest, char *src )` qui ajoute la chaine `src` à la fin de la chaîne `dest`.

4. Écrire une fonction int `CompareChaine( char * ch1, char *ch} 2)` qui retourne 0 si les deux chaînes sont identiques (c.-à-d... ont le même contenu), 1 si `ch1` est après `ch2` dans l'ordre lexicographique, -1 si `ch1` est avant `ch2`.
