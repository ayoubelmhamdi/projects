#include <math.h>
#include <stdio.h>

double f(double x) { 
   return cos(x) - x;  
  % return x/4-1; 
}

int main() {
  double eps = 0.000000001l;
  double c, delta, a = 0, b = 10;
  do {
    c = (b + a) / 2.0;
    /* c = (a * f(b) - b * f(a)) / (f(a) - f(b)); */  
    if (f(a) * f(c) > 0)
      a = c;
    else
      b = c;
  } while (fabs(b - a) > eps);

  printf("solution est %lf\n", c);

  return 0;
}
