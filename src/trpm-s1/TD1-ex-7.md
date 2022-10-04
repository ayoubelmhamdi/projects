# EXERCICE

PGCD

# Corrigé

<div class="tabbed-blocks">

```c
#include <stdio.h>

int main() {
  int a,b,c,d,aide;
  printf("Donner les valeurs de a et b \n");
  scanf("%d%d", &a,&b);

  //permutation pourque la valeur max=a et min=b
  if(a>b){
    c=a;
    d=b;
  }
  else{
    c=b;
    d=a;
  }

  // PGCD

  int rest=1;
  while (rest!=0) {
    rest=c%d;
    c=d;
    d=rest;
  }
  printf("le PGCD de %d et %d est %d\n",a,b,c);

  return 0;
}
```

```matlab
```

<!-- ```py -->
<!-- ``` -->
<!---->
<!-- ```dart -->
<!-- ``` -->
<!---->
<!-- ```lua -->
<!-- ``` -->
<!---->
<!-- ```rust -->
<!-- ``` -->
<!---->
<!-- ```js -->
<!-- ``` -->
<!---->
<!-- ```sh -->
<!-- ``` -->

</div>
