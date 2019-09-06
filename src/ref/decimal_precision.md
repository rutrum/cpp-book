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

    printf("The temperature is %.3f degrees centigrade\n", temp);

    fflush(stdout);

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

### printf and fflush

These are the grody C way that you use if for some reason iomanip isn't working or allowed. The first parameter of printf is a string and you insert variables using %and the data type. For each one of these variable you add you add the parameter to the printf function. %f is for floats. %.nf is a float with only n decimal places. It places the stuff in a buffer and needs to be cleared out to actually print to a screen. \n should clear the buffer and print stuff to the screen. If that diesn't work you explicitly flush the buffer with fflush(stdout).
