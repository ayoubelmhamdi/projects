#include <stdio.h>

int main() {
  int a, b, c;
  printf("calcule de equation de premier order\n");
  printf("Donner les 2 valeurs de a b  \n");
  scanf("%d%d", &a, &b);

  printf("\nles solution de %dx+%d=0 est :\n\t", a, b);

  if (a == 0 && b == 0) {
    printf(" S = R\n");
  } else if (a == 0) {
    printf("il n'y a pas de solution de l'équation dans R\n");
  } else if (b == 0) {
    printf(" S= { 0 }\n");
  } else {
    printf(" S= { %.02f }\n", (float)-b / a);
  }

  return 0;
}
