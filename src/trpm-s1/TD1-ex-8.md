# Calcul d’une racine carrée par itération
------------------------------------------

On veut calculer la racine carrée d’un réel \\(x\\) par la méthode de Newton : si \\(y_{n}\\) est une approximation de la racine carrée, \\(y_{n+1}=\frac{y_{n}^{2}-x_{n}}{2 y_{n}}\\) en est une meilleure.

Partant de \\(y_{0}=1\\), on peut par des itérations successives calculer une valeur de plus en plus précise de la racine.

- Écrire un programme de calcul d’une racine remplissant les conditions suivantes :
    - le programme prévoira de demander si un nouveau calcul est souhaité \\((O / N)\\) ainsi que la valeur de \\(x\\) si la réponse est \\(O\\)
    - les conditions de définition de la racine seront prises en compte ; le processus itératif sera arrêté et le résultat affiché lorsque la valeur absolue de la différence entre \\(x\\) et le carré de l’approximation de la racine sera inférieure à \\(\varepsilon\\), la valeur de \\(\varepsilon\\) ayant été préalablement saisie au clavier.


<div class="tabbed-blocks">

```c
{{#include ../c/trpm-s1/TD1-ex-8.c}}
```
</div>
