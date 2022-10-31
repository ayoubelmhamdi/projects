
sum = 0;
a=input("Donner la valeur de a \n");

for i = 1:a-1
  if mod(a,i) == 0
    sum = sum + i;
  end
end

if a ~= sum
  printf("n'est pas parfait\n");
else
  printf("le nombre est parfait\n");
end
