#include <stdio.h>
int addition(int nomber);

int main() {
  int N, sum = 0;
  printf("Donner la valeur de N \n");
  scanf("%d", &N);

  sum = addition(N);
  printf("la somme de sirie %f\n", sum);

  return 0;
}

int addition(int nomber) {
  int resultat = 0;
  for (int i = 0; i <= nomber; i++) {
    if (i % 2 != 0)
      resultat = resultat + i;
  }
  return resultat;
}
