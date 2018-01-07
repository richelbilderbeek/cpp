# ([C++](Cpp.md)) [std::boolalpha](CppStdBoolalpha.md)

[std::boolalpha](CppStdBoolalpha.md) is a stream manipulator to print the
[boolian](CppBool.md) values [false](CppFalse.md) and
[true](CppTrue.md) as 'false' and 'true' instead of '0' and '1'.

```c++
#include <iomanip>
#include <iostream>

int main() 
{   
  const bool a = true;   
  const bool b = false;
  std::cout << std::boolalpha << a << ' ' << b << '\n'; 
}
```

This will display:

```
true false
```
