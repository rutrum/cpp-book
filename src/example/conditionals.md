# Conditional Statements

```c
#include <iostream>

using namespace std;

int main() {
    int age;
    cout << "How old are you?" << endl;
    cin >> age;
    cout << "You are " << age << " years old." << endl;

    if (age < 21) {
        cout << "You are not old enough to enter." << endl;
    } else {
        cout << "You are old enough to enter the bar." << endl;
    }
}
```

```
> ./a.out
How old are you?
19
You are 19 years old.
You are not old enough to enter.
> 
```