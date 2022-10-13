// METHODE DES TRAPEZES (Forme adaptative)
#include <math.h>
#include <stdio.h>

#define MAX 14

double fct(double x) { return cos(x) - x; }
double secante(double x0, double x1, double eps);

int main() {
  double x0, x1, n, eps, solution;
  n = 100000;
  x1 = 1;
  x0 = 0;
  eps = 0.00000000001;
  // solution = qu_trapezes_adapt(a, b, eps, n);
  // solution = trapezes_adapt1(a, b, eps, n);
  // solution = trapezes_adapt2(a, b, eps, n);
  solution = secante(x0, x1, eps);
  // solution = trapezes_adapt4(a, b, eps, n);
  printf("Méthode des trapèzes (formule adaptative)\n");
  printf("I = %.20lf", solution);

  return 0;
}

double secante(double x0, double x1, double eps) {

  int i=0;
  double x2, f0, f1, err;
  x2 = x1 - (fct(x1) * (x0 - x1)) / (fct(x0) - fct(x1));
  i = 0;
  do {
    x0 = x1;
    x1 = x2;
    f1 = fct(x1);
    f0 = fct(x0);
    if (x1 != 0 && (f1 - f0) != 0) {
      x2 = x1 - (fct(x1) * (x0 - x1)) / (fct(x0) - fct(x1));
      err = fabs((x1 - x0) / x1) * 100;
      i++;
    } else
      return x2;

  } while (err > eps && i <= MAX);
  return x2;
}
