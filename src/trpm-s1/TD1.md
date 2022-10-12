# TD TRPM S1
---------------

# Échange de 3 valeurs
----------------------

On se débarrassera de trois variables entières \\(a, b\\) et \\(c\\).

- Écrire un programme permettant une permutation circulaire des valeurs des trois variables (\\(a\\) reçoit le contenu de \\(b, b\\) reçoit le contenu de \\(c\\) et \\(c\\) reçoit la valeur de a).

- Proposer des solutions ni n’utilisant aucune variable supplémentaire, plusieurs variables supplémentaires ou une seule variable supplémentaire.


# Équation du premier degré
---------------------------

Écrire un programme qui demande à un utilisateur de saisir les coefficients d’une équation du premier degré et qui calcule la solution.

Attention à séparer dans le programme le calcul lui-même et l’affichage du résultat, et à traiter les cas dégénérés.

# Équation du second degré
---------------------------

Selon les mêmes principes que le programme précédent, écrire un programme capable de calculer et d’afficher les racines réelles d’une équation du second degré (faire appel au sous-programme racine carré qui retourne la racine carrée d’un nombre).


# Factorielle
-------------

Donner un programme de calcul de \\(n!\\) où \\(n\\) est entier, La valeur \\(n\\) sera préalablement saisie et le résultat affiché à l’écran.

- Écrire trois versions de ce programme en utilisant à chaque fois une itération différente.

- Quelle version vous semble la plus adaptée ?


# Nombres premiers
------------------

Écrire un programme qui détermine si un nombre entier, préalablement saisi, est un nombre premier.


# Nombres parfaits
------------------

Un nombre est dit parfait s’il est égal à la somme de ses diviseurs propres (un diviseur propre d’un nombre entier est un diviseur de ce nombre autre que lui-même).


Exemple : 6 est parfait, car \\(1+2+3=6\\)b. 

1. Écrire un programme qui détermine si un nombre entier préalablement saisi est un nombre parfait.

2. Écrire un programme qui affiche tous les nombres parfaits compris entre I et \\(n\\) (\\(n\\) entier saisi par l’utilisateur).

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


# Calcul d’une racine carrée par itération
------------------------------------------

On veut calculer la racine carrée d’un réel \\(x\\) par la méthode de Newton : si \\(y_{n}\\) est une approximation de la racine carrée, \\($y_{n+1}=\frac{y_{n}^{2}-x_{n}}{2 y_{n}}\\) en est une meilleure.

Partant de \\(y_{0}=1\\), on peut par des itérations successives calculer une valeur de plus en plus précise de la racine.

- Écrire un programme de calcul d’une racine remplissant les conditions suivantes :
    - le programme prévoira de demander si un nouveau calcul est souhaité \\((O / N)\\) ainsi que la valeur de \\(x\\) si la réponse est \\(O\\)
    - les conditions de définition de la racine seront prises en compte ; le processus itératif sera arrêté et le résultat affiché lorsque la valeur absolue de la différence entre \\(x\\) et le carré de l’approximation de la racine sera inférieure à $\varepsilon\\(, la valeur de \\)\varepsilon$ ayant été préalablement saisie au clavier.


# Calcul des séries entières
----------------------------

1. Écrire un programme qui demande un nombre de départs, et qui calcule la somme des entiers jusqu’à ce nombre.

    Par exemple, si l’on entre 5, le programme doit calculer : \\(1+2+3+4+5=15\\)

2. Écrire un programme qui calcule la somme des \\(n\\) premiers nombres entiers positifs pairs.

    Le programme demandera à l’utilisateur d’entrer la valeur de \\(n\\).

3. Écrire un programme calculant la somme de la série suivante : 
$$S=\sum_{i=1}^{n} \frac{x^{i}}{i !}$$

    - Déduire la valeur de \\(e\\) à partir du calcul de la somme de \\(S\\)

4. Sachant que : 
$$\sum_{i=1}^{n} \frac{1}{i^{2}}=\frac{\pi^{2}}{6}$$

    - Écrire un programme calculant la valeur de \\(\pi\\) à \\(0.0001\\) près.
