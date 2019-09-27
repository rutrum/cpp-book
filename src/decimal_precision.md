# Decimal Precision (C++)

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){

    double enteredTempF;

    cout << "Please enter the temperature in degrees Fahrenheit: " << endl;

    cin >> enteredTempF;

    double temp = (5.0/9.0) * (enteredTempF - 32.0);

    cout << "The temperature is " << temp << " degrees centigrade" << endl;

    cout << "The temperature is " << setprecision(3) << temp << " degrees centigrade" << endl;

    cout << "The temperature is " << fixed << setprecision(3) << temp << " degrees centigrade" << endl;


    return 0;

}
```

```
> ./a.out
Please enter the temperature in degrees Fahrenheit: 
12
The temperature is 11.11111111 degrees centigrade
The temperature is 11.1 degrees centigrade
The temperature is 11.111 degrees centigrade


> 
```


But like why does this work? What's going on under the hood? Well, first of all to use 

```cpp
#include <iomanip>
```

to give us access to fixed and `setprecision(int n)` functions/keywords.

These are pretty neat but let us understand how they work. 


### `setprecision(int n)`

This makes any numbers that will be cout'ed in the stream and only uses n significant figures.
So it will only work for numbers after, but still in the same cout chain.

### fixed 

This tells setpercision to only activate percision after the decimal point. 


