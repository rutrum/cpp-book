# User Input

A lot of problems that we solve by writing computer programs depend on user input.  You can't write a calculator without allowing the user to tell the program what they want to calculate!

In a command line application, we do this by allowing the user to type during our application.  Let's try an example.

Suppose we wanted to know how old a user was, so we could tell them if they could enter this bar (at this bar, you need to be 21 years old.)  Let's create a variable called age and then print to the user the question we'd like to ask.

```c
#include <iostream>

using namespace std;

main() {
    int age;
    cout << "How old are you?" << endl;
}
```

So far this program runs without any input from the user.  To get input from the user, we'll do sort of the opposite of `cout`.  We'll use `cin`.  That is, instead pushing something _out_ to the console, we'll pull data _in_ from the console.  These operations are like opposites.  In fact, we will change `<<` to `>>` and put the variable we want to fill in place of the phrase we want to print.

```c
#include <iostream>

using namespace std;

main() {
    int age;
    cout << "How old are you?" << endl;
    cin >> age;
}
```

Let's run our program and see what happens!

```sh
> ./a.out
How old are you?
25
> 
```

That "25" was written as if it were typed by a user.  It's cool that it ran smoothly, but how do we know it really stored what we typed in?  Why don't we print it to the screen afterwards.

```c
#include <iostream>

using namespace std;

main() {
    int age;
    cout << "How old are you?" << endl;
    cin >> age;
    cout << "You are " << age << " years old." << endl;
}
```

```sh
> ./a.out
How old are you?
25
You are 25 years old.
> 
```

Success!  Now lets try and solve our program.  We need to make a decision based on the user's age.  If the age is 21 or larger, then we should tell the user they can enter the bar.  If not, we should tell them they aren't old enough.  Then we end up with the final result.

```c
#include <iostream>

using namespace std;

main() {
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

```sh
> ./a.out
How old are you?
19
You are 19 years old.
You are not old enough to enter.
> 
```

There we are!  A simple program that uses user input.  There are some other things you should keep in mind when using `cin` however.  Notice that we declared `age` as type `int`.  What would happen if we didn't type an integer in the terminal?  Let's see.

```sh
> ./a.out
How old are you?
very
You are 0 years old.
You are not old enough to enter.
> 
```

Unexpected behavior can happen when you introduce a different data type at the command line.  Sometimes your code can even crash if the input is so unexpected.  But for the purposes of the code you write in this course, you can assume the user will only type in expected responses.