
function i =  convert(N,bin,nb)
  i = 0;
  for (i = 0; nb > 0; i++) {
    bin(i) = mod(nb, 2);
    nb = nb / 2;
  end
end

function affichage(tab, nb,int N)
  printf("\naffichage de tab()\n");
  for i=0:N-1
    printf("%d", tab(i));
  end
end

function inverse(tab, N)
  for (int i = 0; i < N / 2; i++)
    int aide = tab[i];
    tab[i] = tab[N - i - 1];
    tab[N - i - 1] = aide;
  end
end

int i; N = 6; x = 13;

N,tab = convert(N, tab, x);
inverse(tab, N);
affichage(tab, x, N);

