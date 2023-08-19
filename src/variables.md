# Variables

Variables in math _are not exactly like variables in programming_!

Thing of variables as _named_ boxes with data inside.  That is, there's some piece of data, like a number or text.  Put in a box with a label.  The box is a variable.

In C++ you can _declare_ a variable by writing the _datatype_ followed by a _variable name_.  Datatype `int` stores integer values.  Let's create a variable `x` like so.

```cpp
int x;
```

But currently the box is _empty_.  Let's _assign_ it a value.  When you assign a variable a value for the first time, we call this _initialization_.  We can assign the value `5` to our variable `x` like so.

```cpp
x = 5;
```

Note that this equals sign `=` is _not used like it would be in math_!  This equals sign means _assignment_, or in our box analogy, putting data in the box.

Again, this isn't math, and this isn't bidirectional.  You can assign `x` the value `5`, but not the other way around.

```cpp
5 = x; // doesn't work, or make sense
```

Commonly, we perform variable declaration and initalization at the same time, on the same line as a convenience.

```cpp
int x = 5;
```

Variables can be reassigned new values later, but they cannot be _redeclared_!

```cpp
int y = 10;
int y = 5; // invalid!
```

```cpp
int y = 10;
y = 5; // valid!
```

Variables will be reassigned a value, and they lose the old one.  Variables change over time!

Note that variables _don't lose values_ either.  If you were to do the following,

```cpp
int x = 5;
int y = x;
```

Both `x` _and_ `y` contain the integer `5`.  Variable `x` didn't lose or give up its value to `y`.  This value was _copied_.

## Variable Names

It is important to note that our variables can be whatever name we want!  It makes sense to name variables after the value they store.  For instance, we wanted to store the age of a user as a variable, we can write the following.

```cpp
int age = 35;
```

Variable names have specific rules for what can be allowed.  For example, you can't use a keyword (like `int`).  You also can't use spaces or special characters.  You are limited to underscores, letters, and numbers, so long as the first character isn't a number.

These are valid variable names.
```
dog
big_step
_insert
item2
```

These are invalid.
```
2year     // begins with number
big-snek  // contains a special character
my var    // contains space
for       // C++ keyword
```

If you aren't certain if a variable name is valid, the compiler will tell you if it is valid or not.

## Datatypes

### Integers `int`

So far we have the `int` datatype, which stores integer values.  This includes negative values as well.

```cpp
int x = -10;
int y = 0;
int z = 100000;
```

There is a limit on the range of values however.  The `int` datatype can't store values less than -32,767 or greater than 32,767.

### Decimals `float`

A decimal is a number that allows...decimal values!  We call these _floats_ are they declared with `float`.

```cpp
float time = 10.25;
float length = 5.0;
```

### Characters `char`

A character is a single letter wrapped in single quotes `'`.  They store actual characters that are formed to make text. The keyword to use when defining a character is `char`.

```cpp
char passing = 'A';
char failure = 'F';
```

The full range of values for `char` will be explained later in the course.

### Strings

We will work with strings frequently (you've already been printing them!) but they are more complex and will be explained further later in the course.  For now, just know that strings are multiple characters joined with double quotes `"`.  We will print these directly.

```cpp
cout << "I'm a string!" << endl;
```

## Literals

Values written in our code are called _literals_. Literals aren't a new datatype, just a description of actual written values in our code.

In this example,
```cpp
int age = 5;
char letter = 's';
cout << "goodbye!" << endl;
```
we say that `age` and `letter` are _variables_ and that `5`, `s`, and `goodbye!` are literals.

## Naming Summary

```cpp
int drinks = 100;
```

In the above example, we say that
* `drinks` is a variable
* the variable name is `drinks`
* the variable is of type `int`
* `drinks` has the value `100`
* `100` is a `int` literal
* `drinks` is declared to be of type `int`
* `drinks` is initialized to `100`.

Don't get too caught up in this, it will become natural.
