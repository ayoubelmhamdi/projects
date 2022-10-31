
function factoriel = fact(x)
  % calcule de factoriel de x
  factoriel = 1;
  for i = 2:x 
    factoriel = factoriel * i;
  end
endfunction

printf("Calcule de calcule la somme de trois factoriels\n");
a=input("Donner la valeur de a\n");
b=input("Donner la valeur de b\n");
c=input("Donner la valeur de c\n");


resultat = fact(a) + fact(b) + fact(c);

printf("Le factoriel de %d!+%d!+%d! égal: %d\n", a, b, c, resultat);

