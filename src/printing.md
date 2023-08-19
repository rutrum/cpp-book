# Printing to the Terminal

Since all of our programs are running on the terminal, it would nice to have some output during execution so we can know the result ofa computation.  We call this _printing to the terminal_ or just _printing_.

In C++ we can print text to the screen by using `cout`.  We can use it in conjuction with the `<<` operator and our text.

```cpp
#include <iostream>
using namespace std;

int main() {

    cout << "Hello!" << endl;

    return 0;
}
```

When we run this we get the following.
```
$ ./a.out
Hello!
$
```

We can print other kinds of data as well, like numbers.

```cpp
cout << 5 << endl;
```

The `endl` is short for _end line_.  This is a _line break_ or _new line_ or what makes text start on a new line.  Compare these two blocks of code.

This block uses `endl`.
```cpp
cout << "one" << endl;
cout << "more" << endl;
cout << "time" << endl;
```

```
$ ./a.out
one
more
time
$ 
```

This block does not use `endl`.
```cpp
cout << "one";
cout << "more";
cout << "time";
```

```
$ ./a.out
onemoretime$ 
```

Notice how when the program exits it still doesn't put a newline after the last character we printed.  If you don't tell the program to print a newline, it won't.
