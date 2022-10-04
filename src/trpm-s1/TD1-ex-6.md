# EXERCICE

Nombre parfait

# Corrigé

<div class="tabbed-blocks">

```c
#include <stdio.h>

int main() {
  int a,sum=0;
  printf("Donner la valeur de a \n");
  scanf("%d", &a);

  // est ce que partait
  for (int i = 1; i < a; i++) {
    if(a%i==0) sum=sum+i;
  }

  if (a != sum)
    printf("n'est pas parfait\n");
  else
    printf("le nombre est parfait\n");

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

# EXERCICE

Nombre parfait

# Corrigé

<div class="tabbed-blocks">

```c
#include <stdio.h>

int main() {
  int a, sum = 0;
  printf("Donner la valeur de a \n"); // a=1000
  scanf("%d", &a);
  printf("le nomber 1 parfait\n");
  for (int j = 2; j < a; j++) {
    for (int i = 1; i < j; i++) {
      if (j % i == 0)
        sum = sum + i;
    }

    if (j == sum) printf("le nomber %d parfait\n", j);
    sum=0;
  }
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
