printf("calcule de equation de deuxième order\n");

a=input("Donner la valuer de a\n");
b=input("Donner la valuer de b\n");
c=input("Donner la valuer de c\n");

printf("\nles solution de:\n\t %dx^2+%dx+%d=0\n", a, b, c);

if a == 0  
    if b == 0 && c == 0
      printf(" S = R\n");
    elseif b == 0
      printf("il n'y a pas de solution de l'équation dans R\n");
    elseif c == 0
      printf(" S= { 0 }\n");
    else
      printf(" S= { %.02f }\n", -c / b);
    end
else 
    delta = b * b - 4 * a * c;
    if delta == 0
      printf(" S= { %.02f }\n", (float)-b / (2 * a));
    elseif delta > 0
      printf(" S= { %.02f, %.02f }\n", (-b + sqrt(delta)) / (2 * a), (-b - sqrt(delta)) / (2 * a));
    else
      printf("il n'y a pas de solution de l'équation dans R\n");
    end
end

