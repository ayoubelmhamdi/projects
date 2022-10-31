
P = 1;
a=input("Donner la valeur de a \n");

for i = 2:a-1
    if mod(a,i) == 0
        P = 0;
    end
end

if (P == 0)
    printf("n'est pas premier\n");
else
    printf("le nombre est premier\n");
end
