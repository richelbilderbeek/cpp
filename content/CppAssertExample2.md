# ([C++](Cpp.md)) [assert example 2: basics with informative output](CppAssertExample2.md)

[assert example 2: basics with informative output](CppAssertExample2.md) is an [assert](CppAssert.md) [example](CppExample.md).

From within Qt Creator, this example shows how to view the assert output in the console window.

```c++
#include <cassert>
#include <csignal>
#include <cstdlib>
#include <iostream>

void on_abort(int)
{
  std::exit(1);
}

int main()
{
  //Connect the abort signal to the on_abort, to obtain informative
  //screen output with 'Projects | Run | Run in terminal' unchecked
  std::signal(SIGABRT,on_abort);

  const double numerator = 1.0;
  const double denominator = 0.0;
  assert(denominator != 0.0);
  const double result = numerator / denominator;
  std::cout << result << '\n';
}
```

Console output will be:

```
Assertion failed!

Program: my_path/my_program
File: my_path/main.cpp, Line 19

Expression: denominator != 0.0
```
