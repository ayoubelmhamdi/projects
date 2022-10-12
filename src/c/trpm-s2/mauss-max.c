// LA METHODE DE GAUSS PIVOT MAXIMUM
#include <math.h>
#include <stdio.h>
#define NMAX 5
#define N2MAX 6
int sl_gauss_pivmax(double a[NMAX][NMAX], double b[NMAX], int n);
int main() {
  double a[NMAX][NMAX], b[NMAX];
  int i, j, n, err;
  n = 4;
  printf("Méthode de Gauss\n");
  a[1][1] = 8   ; a[1][2] = -4 ; a[1][3] = 3   ; a[1][4] = 7   ; b[1] = 12;
  a[2][1] = 4   ; a[2][2] = 2  ; a[2][3] = -6  ; a[2][4] = 4   ; b[2] = 1;
  a[3][1] = -16 ; a[3][2] = 6  ; a[3][3] = -2  ; a[3][4] = -15 ; b[3] = -19;
  a[4][1] = 6   ; a[4][2] = 10 ; a[4][3] = -15 ; a[4][4] = 10  ; b[4] = 1;
  printf(
      "                          A(1)                                 b(1)\n");
  for (i = 1; i <= n; i++) {
    for (j = 1; j <= n; j++)
      printf("%12.5e  ", a[i][j]);
    printf("I  %12.5e  \n", b[i]);
  }
  err = sl_gauss_pivmax(a, b, n);
  if (err == 1) {
    printf("Solution:\n");
    for (i = 1; i <= n; i++)
      printf("x%d =%23.15e  \n", i, b[i]);
  } else
    printf("Erreur, matrice singulière\n");
  return 0;
}
/*
Méthode de Gauss avec recherche du pivot maximum (fonction sl_gauss_pivmax).
Les paramètres d'appel de cette fonction sont :
a : un tableau carré (la matrice du système) ;
b : un tableau unidimensionnel (le second membre du système) ;
n : l'ordre de la matrice.
Elle renvoie la valeur 1 si la matrice est numériquement inversible et la valeur
0 sinon ; quand la valeur renvoyée est 1, la solution du système se trouve dans
le tableau b. La constante entière NMAX est égale à la dimension maximale de la
matrice (+1) ; la constante entière N2MAX est égale à NMAX+1.
*/
int sl_gauss_pivmax(double a[NMAX][NMAX], double b[NMAX], int n) {
  int i, j, k, l, err;
  double max, pivot, coef, s;
  double t[NMAX][N2MAX];
  for (i = 1; i <= n; i++) {
    for (j = 1; j <= n; j++)
      t[i][j] = a[i][j];
    t[i][n + 1] = b[i];
  }
  err = 1;
  k = 1;
  while (err == 1 && k < n) {
    max = fabs(t[k][k]);
    l = k;
    for (i = k + 1; i <= n; i++)
      if (max < fabs(t[i][k])) {
        max = fabs(t[i][k]);
        l = i;
      }
    if (max != 0) {
      if (l != k)
        for (j = k; j <= n + 1; j++) {
          pivot = t[k][j];
          t[k][j] = t[l][j];
          t[l][j] = pivot;
        }
      pivot = t[k][k];
      for (i = k + 1; i <= n; i++) {
        coef = t[i][k] / pivot;
        for (j = k + 1; j <= n + 1; j++)
          t[i][j] -= coef * t[k][j];
      }
      }
    else err = 0;
    k++;
    }
    if (t[n][n] == 0)
      err = 0;
    if (err == 1) {
      b[n] = t[n][n + 1] / t[n][n];
      for (i = n - 1; i >= 1; i--) {
        s = t[i][n + 1];
        for (j = i + 1; j <= n; j++)
          s -= t[i][j] * b[j];
        b[i] = s / t[i][i];
      }
    }
    return (err);
  }
