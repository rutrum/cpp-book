# For Loop

```c
#include <iostream>

using namespace std;

main() {
    int sum = 0;

    for (int i = 1; i <= 100; i++) {
        if (i % 2 == 1) {
            sum += i;
        }
    }

    cout << "Sum of odd numbers between 1 and 100 is " << sum << endl;
}
```

```
> ./a.out
Sum of odd numbers between 1 and 100 is 2500
> 
```