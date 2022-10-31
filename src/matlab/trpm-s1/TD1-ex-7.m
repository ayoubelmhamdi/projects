
a=input("Donner les valeur de a\n");
b=input("Donner les valeur de b\n");

% permutation parce que la valeur max=a et min=b
if (a > b)
  c = a;
  d = b;
else
  c = b;
  d = a;
end

% PGCD

rest = 1;
while rest ~= 0
  rest = mdo(c,d);
  c = d;
  d = rest;
end
printf("le PGCD de %d et %d est %d\n", a, b, c);


