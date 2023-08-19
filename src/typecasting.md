# Type Casting

You can't change a variable's datatype, but you can change the type of the value itself.  We call this _type casting_ and it allows us to convert a value of one datatype to another.  Here's a simple example of type casting, simply assigned the value of `x` to a new variable with type `float`.

```cpp
int x = 20;
float z = x;
```

## Operations Between Datatypes

What happens if add a float to an integer?

```cpp
cout << 5 + 5.2 << endl;
```

```
$ ./a.out
10.2
$
```

It printed an integer.  C++ will _typecast_ to an float when working with both integers and floats.

Of course, if we wanted to truncate the value, we could just assign the result to an `int` variable and print that instead.

```cpp
int sum = 5 + 5.2;
cout << sum << endl;
```

```
$ ./a.out
10
$
```

We could also do _inline_ typecasting, where we typecast a value without assigning to a variable.  To do this, precede the value with the type to cast into in parenthesis.  In our case, we want to cast the sum of `5 + 5.2` to an `int`.  We do this like so.

```cpp
cout << (int) (5 + 5.2) << endl;
```

```
$ ./a.out
10
$
```
