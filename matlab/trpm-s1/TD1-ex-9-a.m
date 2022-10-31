function resultat = addition(nomber)
  resultat = 0;
  for i = 0:nomber
    resultat = resultat + i;
  end
endfunction

N=input("Donner la valeur de a \n");
sum = addition(N);
printf("la sum egal %d\n", sum);
