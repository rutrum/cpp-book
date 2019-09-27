# Arrays

```cpp
#include <iostream>

using namespace std;

int main() {
    int numbers[] = {42, 2019, 256, 5040};
    bool favorite[] = {false, false, false, false};
    bool atleast_one_fav = false;

    for (int i = 0; i < 4; i++) {
        cout << "Is " << numbers[i] << " your favorite number? [y/n] ";
        char response;
        cin >> response;

        if (response == 'y' || response == 'Y') {
            favorite[i] = true;
            atleast_one_fav = true;
        }
    }

    if (atleast_one_fav) {
        cout << "A list of your favorite numbers..." << endl;
        for (int i = 0; i < 4; i++) {
            if (favorite[i]) {
                cout << numbers[i] << endl;
            }
        }

    } else {
        cout << "You have no favorite numbers. That's sad." << endl;
    }
}
```

```
> ./a.out
Is 42 your favorite number? [y/n] y
Is 2019 your favorite number? [y/n] n
Is 256 your favorite number? [y/n] y
Is 5040 your favorite number? [y/n] y
A list of your favorite numbers...
42
256
5040
>
```

```
> ./a.out
Is 42 your favorite number? [y/n] n
Is 2019 your favorite number? [y/n] n
Is 256 your favorite number? [y/n] n
Is 5040 your favorite number? [y/n] n
You have no favorite numbers. That's sad.
>
```