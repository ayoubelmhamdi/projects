%%%  int a, b, c, aide;

a=input("Donner la valuer de a\n");
b=input("Donner la valuer de b\n");
c=input("Donner la valuer de c\n");


affichage(a,b,c)

function affichage(a, b, c)
    aide=a;
    a=b;
    b=c;
    c=aide;
    printf("les valeur devient a=%d\tb=%d\tc=%d\n", a, b, c)
end
%  // permutation
%
%  int aide;
%  aide = x;
%  x = b;
%  b = c;
%  c = aide;
%
