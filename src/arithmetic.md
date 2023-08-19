# Arithmetic

An _operation_ is a _function_ or _computation_ that is performed on data.  We will be working with `int` data frequently, so we will learn some operations that can be used to transform integers.

Here is a summary of those operations.

## Basic Operations

### Addition
This lets you add two variables together.
```cpp
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
int w = -x;    // w contains -6
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

Try performing this division, where `y` doesn't divide `x`.
```c
int x = 20;
int y = 3;

int z = x / y;
```

Integer `z` will contain `6`.  Why is this?  Recall that in math, 20 divided by 3 gives you 6 and 2 thirds, or 6.66 repeating.  See that in our code we called `z` an integer.  We can't store 6.66 in an integer.  C++ performs what's called _truncation_, or simply chopping off the decimal.  In our case, that gives us 6.

This is another important lesson to note.  C++ doesn't make any assumptions about datatypes.  When working with integers, you get integers back.

### Modulus

Modulus is a fancy name for "remainder after division".  In other words, when you divide 10 by 3, you get 3 with remainder 1.  This modulus operator, denoted by the percent sign `%`, will return that remainder.  This can be especially helpful when determining if a number is even or odd.

```c
int x = 14;
int y = 4;

int z = x % y; // z contains 2
```

This behavior along with division will allow you to know if a value was truncated or not.  In our case, we can perform the 20 divided by 3 and to know not only how many 3s fit into 20 but how much is left over.

```c
int x = 20;
int y = 3;

int quotient = x / y; // 6
int remainder = x % y; // 2
```

## Grouping

We can perform multiple operations in line with one another.  This follows expected mathematical rules for evaluation.  It first combines terms that use multiplication and division, then addition and subtraction.

```c
int x = 5 + 10 * 2; // 25
int y = 2 * 10 + 5; // 25

int z = 5 - 3 * 2; // -1
int w = 55 / 11 + 10 // 15
```

Similar to mathematics, we can use parenthesis `()` to force certain operations to be performed first.

```c
int x = (5 + 10) * 2; // 30 
int y = 2 * (10 + 5); // 30

int z = (5 - 3) * 2; // 4
int w = 55 / (11 + 10) // 2 (truncation!)
```
