
- permutation de trois nombre a aide d'un variable temporel

<div class="tabbed-blocks">

```c
#include <stdio.h>
void affichage(int a,int b,int c);

int main () {
  int a,b,c,aide;
  printf("Donner les 3 valeur de a b c\n");
  scanf("%d%d%d",&a,&b,&c);

  affichage(a,b,c);
  return 0;
}

void affichage(int x,int b,int c){
// permutation

  int aide;
  aide=x;
  x=b;
  b=c;
  c=aide;

  printf("les valeur devien a=%d\tb=%d\tc=%d\n",x,b,c);
}

```

```sh
echo "Hello world"
```

</div>

- permutation de trois nombre a aide des calcule mathématique

<div class="tabbed-blocks">

```c

#include <stdio.h>

int main () {
  int a,b,c,aide;
  printf("Donner les 3 valeur de a b c\n");
  scanf("%d%d%d",&a,&b,&c);

  printf("vous aver entre   a=%d\tb=%d\tc=%d\n",a,b,c);
  // permutation de a et b
  /* a=a0; */
  /* b=b0; */
  a=a-b; // a0-b0
  b=b+a; // b0+a0-b0=a0
  a=b-a; // a0-(a0-b0)=b0

  // permutation de b et c
  /* b=a0; */
  /* c=c0; */
  c=c-b; // c0-a0
  b=b+c; // a0+c0-b0=c0
  c=b-c; // c0-(c0-a0)=a0


  printf("les valeur devien a=%d\tb=%d\tc=%d\n",a,b,c);
  return 0;
}
```
</div>
