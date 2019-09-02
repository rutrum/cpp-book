# User Input

```c
#include <iostream>

using namespace std;

main() {
    int fav;
    cout << "What is your favorite number?" << endl;
    cin >> fav;

    cout << "That's nice, but an even better number is " << fav + 1 << "." << endl;
}
```

```
> ./a.out
What is your favorite number?
42
That's nice, but an even better number is 43.
>
```