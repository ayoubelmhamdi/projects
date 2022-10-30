
function affichage(a, b, c)
      a = a - b; % a=a-b
      b = b + a; % b+(a-b)=a
      a = b - a; % (a)-(a-b)=b

    printf("les valeur devient a=%d\tb=%d\tc=%d\n", a, b);
end

a=input("Donner la valuer de a\n");
b=input("Donner la valuer de b\n");


affichage(a,b)
