#include <stdio.h>

int convert(int N, int *bin, int nb) {
  int i = 0;
  for (i = 0; nb > 0; i++) {
    bin[i] = nb % 2;
    nb = nb / 2;
  }
  return i;
}

void affichage(int *tab, int nb, int N) {
  printf("\naffichage de tab[]\n");
  for (int i = 0; i < N; i++) {
    printf("%d", tab[i]);
  }
}

void inverse(int *tab, int N) {
  for (int i = 0; i < N / 2; i++) {
    int aide = tab[i];
    tab[i] = tab[N - i - 1];
    tab[N - i - 1] = aide;
  }
}

int main(int argc, char *argv[]) {
  int i, N = 6, x = 13;
  int tab[N];

  N = convert(N, tab, x);
  inverse(tab, N);
  affichage(tab, x, N);

  return 0;
}
