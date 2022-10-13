#include <math.h>
#include <stdio.h>

int main() {
  double x;
  double racine = 1;
  double error = 0.000001;
  printf("Donner la valeur de a \n");
  scanf("%lf", &x);

  while (fabs(racine * racine - x) >= error) {
    racine = (1 / 2.0) * (x / racine + racine);
  }

  printf("le racine de %0.1lf est %.20lf\n", x, racine);

  return 0;
}
