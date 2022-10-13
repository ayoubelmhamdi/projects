#include <stdio.h>

int main() {
  int a, sum = 0;
  printf("Donner la valeur de a \n");
  scanf("%d", &a);

  for (int i = 1; i < a; i++) {
    if (a % i == 0)
      sum = sum + i;
  }

  if (a != sum)
    printf("n'est pas parfait\n");
  else
    printf("le nombre est parfait\n");

  return 0;
}
