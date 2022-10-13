#include <math.h>
#include <stdio.h>

int main() {
  int a, b, c;
  printf("calcule de equation de deuxième order\n");
  printf("Donner les 3 valeurs de a b c  \n");
  scanf("%d%d%d", &a, &b, &c);

  printf(" les solution de %dx^2+%dx+%d=0 est :\n", a, b, c);
  if (a == 0) {
    if (b == 0 && c == 0)
      printf(" S = R\n");
    else if (b == 0)
      printf("il n'y a pas de solution de l'équation dans R\n");
    else if (c == 0)
      printf(" S= { 0 }\n");
    else
      printf(" S= { %.02f }\n", (float)-c / b);

  } else {
    int delta = b * b - 4 * a * c;
    if (delta == 0)
      printf(" S= { %.02f }\n", (float)-b / (2 * a));
    else if (delta > 0)
      printf(" S= { %.02f, %.02f }\n", (float)(-b + sqrt(delta)) / (2 * a),
             (float)(-b - sqrt(delta)) / (2 * a));

    else
      printf("il n'y a pas de solution de l'équation dans R\n");
  }

  return 0;
}
