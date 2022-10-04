# EXERCICE

Nombre premier

# Corrigé

<div class="tabbed-blocks">

```c
#include <stdio.h>

int main() {
  int a, P = 1;
  printf("Donner la valeur de a \n");
  scanf("%d", &a);

  for (int i = 2; i < a; i++) {
    if (a % i == 0)
      P = 0;
  }

  if (P == 0)
    printf("n'est pas premier\n");
  else
    printf("le nombre est premier\n");

  return 0;
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
