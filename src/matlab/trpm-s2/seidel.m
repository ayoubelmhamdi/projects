#include <math.h>
#include <stdio.h>

#define MAX 5
#define MAXT 5 // max col for table t[MAX][MAXT]

void gauss_seidel(double a[MAX][MAX], double b[MAX], double x[MAX], int n,
                  double iter, double eps);

int main() {
  int i, j;
  double iter = 21, eps = 0.00001;
  int n = 4; //
  double a[MAX][MAX] = {
      {0, 0, 0, 0, 0},     //
      {0, -16, 6, -2, -5}, //
      {0, 3, 10, -5, 1},   //
      {0, -4, 1, 18, 2},   //
      {0, 1, 2, 2, -14},
  };
  double b[MAX] = {0, -19, 1, 12, 1};
  double x[MAX] = {0, 0, 0, 0, 0};

  // printf("           A               B\n");
  // for (i = 1; i <= n; i++) {
  // 	for (j = 1; j <= n; j++)
  // 		printf("%12.5e\t", a[i][j]);
  // 	printf("| %12.5e\n", b[i]);
  // }

  gauss_seidel(a, b, x, n, iter, eps);

  printf("\n\nsolution:\n");
  for (i = 1; i <= n; i++)
    printf("x%d=%10.10e\n", i, x[i]);

  return 0;
}

void gauss_seidel(double a[MAX][MAX], double b[MAX], double x[MAX], int n,
                  double iter, double eps) {
  int i, j, k = 1;
  double s, alpha, delta;
  alpha = 1.0;

  while (k <= iter && alpha > eps) {
    alpha = 0.0;
    for (i = 1; i <= n; i++) {
      delta = x[i];
      s = b[i];
      for (j = 1; j <= n; j++)
        if (i != j)
          s -= a[i][j] * x[j];
      x[i] = s / a[i][i];
      delta -= x[i];
      alpha += delta * delta;
    }
    printf("\n");
    for (i = 1; i <= n; i++)
      printf("x%d=%10.10e\t", i, x[i]);
    k++;
  }
}
