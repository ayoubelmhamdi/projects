#include <stdio.h>
void affichage(int a, int b, int c);

int main() {
  int a, b, c, aide;
  printf("Donner les 3 valeur de a b c\n");
  scanf("%d%d%d", &a, &b, &c);

  affichage(a, b, c);
  return 0;
}

void affichage(int x, int b, int c) {
  // permutation

  int aide;
  aide = x;
  x = b;
  b = c;
  c = aide;

  printf("les valeur devient a=%d\tb=%d\tc=%d\n", x, b, c);
}
