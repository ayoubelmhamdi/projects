#include <stdio.h>

int main() {
  int a, sum = 0;
  printf("Donner la valeur de a \n"); // a=1000
  scanf("%d", &a);

  for (int j = 2; j < a; j++) {
    for (int i = 1; i < j; i++) {
      if (j % i == 0)
        sum = sum + i;
    }

    if (j == sum)
      printf("le nomber %d parfait\n", j);
    sum = 0;
  }
  return 0;
}
