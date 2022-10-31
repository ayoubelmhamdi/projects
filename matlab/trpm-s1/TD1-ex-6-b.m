sum = 0;
a=input("Donner la valeur de a \n");

for j = 2:a-1
  for i = 1:j-1
    if mod(j , i) == 0
      sum = sum + i;
    end
  end

  if (j == sum)
    printf("le nomber %d parfait\n", j);
  end
  sum = 0;
end
