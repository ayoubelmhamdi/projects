// METHODE DES TRAPEZES (Forme adaptative)
#include <math.h>
#include <stdio.h>

#define MAX 18

double fct(double x) { return (sqrt(x)); }

double trapezes_adapt(double a, double b, double eps, int n);

int main() {
  double a=0, b=0, n=0, eps=0, solution=0;
  n = 100000;
  a = 1;
  b = 1.3;
  eps = 0.00000000001;

  solution = trapezes_adapt(a, b, eps, n);

  printf("Méthode des trapèzes (formule adaptative)\n");
  printf("I = %.20lf", solution);

  return 0;
}

double trapezes_adapt(double a, double b, double eps, int n) {
  int i, j;
  double h=0, sum=0, err=0, x=0, intergral=0;

  n = 1;
  h = b - a;
  j = 0;
  err = 2 * eps;

  intergral = h * (fct(a) + fct(b)) / 2;

  while (fabs(err) > eps && j < MAX - 1) {
    j++;
    err = intergral;

    n = n * 2;
    h = h / 2;
    x = a - h;

    sum = 0;
    for (i = 1; i <= n / 2; i++) {
      x = x + 2 * h;
      sum = sum + fct(x);
    }
    intergral = intergral / 2 + h * sum;
    err = err - intergral;
  }

  return intergral;
}
