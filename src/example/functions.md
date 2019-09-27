# Functions

In this example we use functions to do isolate different pieces of code.  We first greet the user, ask for their favorite number, and then a number larger than their favorite number.

```cpp
#include <iostream>

using namespace std;

void greet_user();
int ask_fav_num();
int ask_bigger_num(int);

int main() {
    greet_user();
    int fav;
    fav = ask_fav_num();
    int big;
    big = ask_bigger_num(fav);
    
    if (big <= fav) {
        cout << "Hey! " << big << " isn't bigger than " << fav << "!" << endl;
        cout << "You failed!"
    } else {
        cout << "Congratulations, you passed the test!" << endl;
    }
}

void greet_user() {
    cout << "Welcome to my IQ tester!" << endl;
}

int ask_fav_num() {
    cout << "What is your favorite number?" << endl;
    int num;
    cin >> num;

    if (num < 0) {
        cout << "Negative numbers aren't cool!" << endl;
        num = -num;
        cout << "Your new favorite number is " << num << "." << endl;
    }

    return num;
}

int ask_bigger_num(int fav) {
    cout << "What is a number bigger than your favorite number " 
         << fav << "?" << endl;
    int num;
    cin >> num;
    return num;
}
```

```
Welcome to my IQ tester!
What is your favorite number?
25
What is a number bigger than your favorite number 25?
22
Hey! 22 isn't bigger than 25!
You failed!
```

```
Welcome to my IQ tester!
What is your favorite number?
-42
Negative numbers aren't cool!
Your new favorite number is 42.
What is a number bigger than your favorite number 42?
100
Congratulations, you passed the test!
```