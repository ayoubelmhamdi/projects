# EXERCICE

Calcule de la factorielle

# Corrigés

<div class="tabbed-blocks">

```c

#include <stdio.h>

int fact(int x);

int main() {
  int a, b, c, resultat;
  printf("Calcule de calcule la somme de trois factoriels\n");
  printf("Donner les this valeur a et b et c\n");
  scanf("%d%d%d", &a, &b, &c);

  resultat = fact(a) + fact(b) + fact(c);

  printf("Le factoriel de %d!+%d!+%d! égal: %d\n", a, b, c, resultat);

  return 0;
}

int fact(int x) {
  // calcule de factoriel de x
  int factoriel = 1;
  for (int i = 2; i <= x; i++) {
    factoriel = factoriel * i;
  }
  return factoriel;
}
```

```matlab
```

```py
```

```dart
```

```lua
```

```rust
```

```js
```

```sh
```

</div>
