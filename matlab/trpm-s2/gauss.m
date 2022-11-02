% LA METHODE DE GAUSS

NMAX=5;
N2MAX=6;


n = 4;
printf("Méthode de Gauss:\n");
a = [ 
  [8, -4, 3, 7],     %
  [4, 2, -6, 4],     %
  [-16, 6, -2, -15], %
  [6, 10, -15, 10],  %
];
b = [12, 1, -19, 1];

printf("                        A(1)                                 b(1)\n");
for i = 1:n 
  for j = 1:n 
    printf("%12.5e  ", a(i,j));
  end
  printf("I  %12.5e  \n", b(i));
end

err = sl_gauss_aff(a, b, n);
if (err == 1) 
  printf("Solution:\n");
  for i = 1:n 
    printf("x%d =%23.15e  \n", i, b(i));
  end
else
  printf("Erreur, matrice singulière\n");
end


function err = sl_gauss_aff(a, b, n) 
  for i = 1:n 
    for j = 1:n 
      t(i,j) = a(i,j);
    end
    t(i,n + 1) = b(i);
  end

  err = 1;
  k = 1;
  while (err == 1 && k < n) 
    pivot = abs(t(k,k));
    l = k;
    while (pivot == 0 && l < n) 
      l=l+1;
      pivot = abs(t(l,k));
    end
    if (pivot ~= 0) 
      if (l ~= k)
        for j = k:n 
          pivot = t(k,j);
          t(k,j) = t(l,j);
          t(l,j) = pivot;
        end
      end
      pivot = t(k,k);
      for i = k+1:n 
        coef = t(i,k) / pivot;
        for j = 1:n+1
          t(i,j) = t(i,j) - coef * t(k,j);
        end
      end
      printf("                  A(%d)       b(%d)\n", k + 1, k + 1);
      for i = 1:n 
        for j = 1:n 
          printf("%12.5e  ", t(i,j));
        end
        printf("I  %12.5e  \n", t(i,n + 1));
      end
    else
      err = 0;
    end
    k=k+1;
  end

  if (t(n,n) == 0)
    err = 0;
  end

  if (err == 1) 
    b(n) = t(n,n + 1) / t(n,n);
    for i = n-1:1 % for (i = n - 1; i >= 1; i--) 
      s = t(i,n + 1);
      for j = j+1:n 
        s -= t(i,j) * b(j);
      end
      b(i) = s / t(i,i);
    end
  end
end
