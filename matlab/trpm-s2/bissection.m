function x = f(x)  
   x = cos(x) - x;  
endfunction

eps = 0.000000001;
c; delta; a = 0; b = 10;
do 
  c = (b + a) / 2.0;
  % c = (a * f(b) - b * f(a)) / (f(a) - f(b));
  if (f(a) * f(c) > 0)
    a = c;
  else
    b = c;
while (abs(b - a) > eps)

printf("solution est %lf\n", c);
