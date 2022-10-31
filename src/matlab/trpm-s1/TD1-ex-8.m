
racine = 1;
error = 0.000001;
x=input("Donner la valeur de a \n");

while (abs(racine * racine - x) >= error)
  racine = (1 / 2.0) * (x / racine + racine);
end

printf("le racine de %0.1f est %.20f\n", x, racine);
