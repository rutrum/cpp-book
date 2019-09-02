# Arithmetic

Here we use variables of type `int`, or integers, to perform calculations and print the result to the user.

```cpp
#include <iostream>

using namespace std;

int main() {
	int x = 20;
    int y = 7;

    int q = x / y;
    int r = x % y;

    cout << x << " divided by " << y
         << " is " << q << " with remainder " << r << endl;

    x = 5;
    y = 2;

    cout << x << " times " << y << " is " x * y << endl;
}
```

```
> ./a.out
20 divided by 7 is 2 with remainder 6
5 times 2 is 10
>
```