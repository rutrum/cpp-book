# While Loop

```c
#include <iostream>

using namespace std;

int main() {
    cout << "You need 100 dollars to buy the toy." << endl;
    int money = 0;
    
    while (money < 100) {
        cout << "You can't buy the toy with only " << money << " dollars." << endl;
        cout << "How much more do you want to save?" << endl;

        int save;
        cin >> save;

        money += save;
    }

    cout << "You've saved " << money << " dollars so you can buy the toy!" << endl;
}
```

```
> ./a.out
You need 100 dollars to buy the toy.
You can't buy the toy with only 0 dollars.
How much more do you want to save?
50
You can't buy the toy with only 50 dollars.
How much more do you want to save?
20
You can't buy the toy with only 70 dollars.
How much more do you want to save?
35
You've saved 105 dollars so you can buy the toy!
> 
```
