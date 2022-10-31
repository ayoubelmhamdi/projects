#include <stdio.h>

int lire_dim(int n) { return n; }

int convert(int N, int *bin, int nb) {
  int i = 0;
  for (i = 0; nb > 0; i++) {
    bin[i] = nb % 2;
    nb = nb / 2;
  }
  return i;
}

void lire_matrice(int l, int *mat) {
  for (int i = 0; i < l; i++) {
    for (int j = 0; j < l; j++) {
      printf("mat[%d][%d]=", i, j);
      scanf("%d%d", mat + i, mat + j);
    }
  }
}

void affichage(int l, int tab[l][l]) {
  printf("\naffichage de tab[]\n");
  for (int i = 0; i < l; i++) {
    for (int j = 0; j < l; j++) {
      /* if you want to use pointer use */
      /* func(...,`int** tab`,...) */
      /* if you don't want to use pointer*/
      /* must used args like that func(....,int a,int b,int tab[a][b],...), */
      /* printf("%d", tab[i][j]); */
      printf("%d\t", tab[i][j]);
    }
    printf("\n\n");
  }
}

void multi_2_matrices(int n, int mat1[n][n], int mat2[n][n], int mat3[n][n]) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      int sum = 0;
      for (int k = 0; k < n; k++) {
        sum = sum + mat1[i][k] * mat2[k][j];
      }
      mat3[i][j] = sum;
    }
  }
}

int main(int argc, char *argv[]) {
  int l = 2;
  /* int mat1[l][l]; */
  /* int mat2[l][l]; */
  int mat1[2][2] = {{1, 0}, {0, 2}};
  int mat2[2][2] = {{3, 0}, {0, 4}};
  int mat3[2][2];

  multi_2_matrices(l, mat1, mat2, mat3);
  affichage(2, mat1);
  affichage(2, mat2);
  affichage(2, mat3);
  return 0;
}
