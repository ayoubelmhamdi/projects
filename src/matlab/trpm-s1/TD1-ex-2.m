
printf("calcule de equation de premier order\n");

a=input("Donner la valuer de a\n");
b=input("Donner la valuer de b\n");

printf("\nles solution de:\n\t %dx+%d=0\n", a, b);

if a == 0 && b == 0 
    printf(" S = R\n");
elseif a == 0 
    printf("il n'y a pas de solution de l'équation dans R\n");
elseif b == 0 
    printf(" S= { 0 }\n");
else 
    printf(" S= { %.02f }\n", -b / a);
end

