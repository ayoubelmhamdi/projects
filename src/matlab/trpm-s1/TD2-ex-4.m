
function tab = tri_tableu(tab, n)
  for i = 1:n
    for j = i:n
      if tab(i) > tab(j)
        aide = tab(i);
        tab(i) = tab(j);
        tab(j) = aide;
      end
    end
  end
endfunction

tab1 = [8, 6, 4, 2, 12, 10];
tab2 = [5, 15, 10];
n1 = 6;
n2 = 3;
n3 = n1 + n2;
tab1 = tri_tableu(tab1, n1);
tab2 = tri_tableu(tab2, n2);
% disp(tab1)
% disp(tab2)

for i = 1:n3
  if (i <= n1)
    tab3(i) = tab1(i);
  else
    tab3(i) = tab2(i - n1);
  end
end


printf("\naffichage de tab1()\n");
% for i = 1:n1
%   printf("%d\t", tab1(i));
% end
disp(tab1)

printf("\naffichage de tab2()\n");
% for i = 1:n2
%   printf("%d\t", tab2(i));
% end
disp(tab2)

printf("\naffichage de tab3()\n");
% for i = 1:n3
%   printf("%d\t", tab3(i));
% end
disp(tab3)

