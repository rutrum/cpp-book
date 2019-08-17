# Arithmetic

Here is a summary of operations you can perform on `int` variables.

## Basic Operations

### Addition
This lets you add two variables together.
```c
int x = 5;
int y = 7;

int z = x + y; // z contains 12
```

### Subtraction
You can also subtract two variables together.  You can also negate the value of an `int`.
```c
int x = 6;
int y = -2; // y is negative 2

int z = x - y; // z contains 8
```

### Multiplication
No surprise here, you can multiply numbers together with an asterisk `*`.
```c
int x = 10;
int y = -2;

int z = x * y; // z contains -20
```

## Trickier Operations

### Division
And you can divide two numbers together with a forward slash `/`.  Just like in math, you can't divide by zero!  Doing this will cause your program to crash.
```c
int x = 20;
int y = 4;

int z = x / y; // z contains 5
```

#### Truncation

### Modulus
Modulus is a fancy name for "remainder after division".  In other words, when you divide 10 by 3, you get 3 with remainder 1.  This modulus operator, denoted by the percent sign `%`, will return that remainder.  This can be especially helpful when determining if a number is even or odd.
```c
int x = 14;
int y = 4;

int z = x % y; // z contains 2