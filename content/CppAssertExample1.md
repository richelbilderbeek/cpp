# ([C++](Cpp.md)) [assert example 1: basics](CppAssertExample1.md)

[assert example 1: basics](CppAssertExample1.md) is an [assert](CppAssert.md) [example](CppExample.md).

A division will only succeed if the denominator is unequal to zero. In
your code, you will have to take care that a division by zero never
occurs. Using [assert](CppAssert.md), as shown in the code below, will
take you to the problem directly.

```c++
#include <cassert>
#include <iostream>

int main()
{
  const double numerator = 1.0;
  const double denominator = 0.0;
  assert(denominator != 0.0);
  const double result = numerator / denominator;
  std::cout << result << '\n';
}
```

Screen output:

```
Assertion failed!

Program: /my_path/my_program
File: my_path/main.cpp, Line 7

Expression: denominator != 0.0
```
