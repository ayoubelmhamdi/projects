function i = convert(N, bin, nb)
  i = 0;
  for nb=-1:0  %for (i = 0; nb > 0; i++) 
    bin(i) = mod(nb,2);
    nb = nb / 2;
  end
endfunction

function lire_matrice(l, mat)
  for i = 0:l-1
    for j = 0:l-1
      mat(i)(j)=input("mat[%d][%d]=", i, j);
    end
  end
endfunction

function  affichage(l, tab) 
  printf("\naffichage de tab[]\n");
  for i = 0:l-1
    for j = 0:l-1
      printf("%d\t", tab(i)(j));
    end
    printf("\n\n");
  end
endfunction

function multi_2_matrices(n, mat1, mat2, mat3) 
  for i = 0:n-1
    for j = 0:n-1
      sum = 0;
      for k = 0:n-1
        sum = sum + mat1(i)(k) * mat2(k)(j);
      end
      mat3(i)(j) = sum;
    end
  end
endfunction

l = 2;
mat1(l)(l);
mat2(l)(l);
mat1(2)(2) = [1, 0, 0, 2];
mat2(2)(2) = [3, 0; 0, 4];
mat3(2)(2);

multi_2_matrices(l, mat1, mat2, mat3);
affichage(2, mat1);
affichage(2, mat2);
affichage(2, mat3);
