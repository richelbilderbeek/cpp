# ([C++](Cpp.md)) [std::stoi](CppStdStoi.md)

[std::stoi](CppStdStoi.md) is a C++11 STL function to [convert](CppConvert.md) a [std::string](CppStdString.md) to [int](CppInt.md). 

## Example: input can be converted to integer

```c++
#include <cassert>
#include <string>

int main()
{
  assert(std::stoi("123") == 123);
}
```

## Example: input cannot be converted to integer

If the input cannot be converted to [integer](CppInt.md),
a [std::invalid_argument](CppStdInvalid_argument.md) is
[thrown](CppThrow.md).

```c++
#include <cassert>
#include <stdexcept>
#include <string>

int main()
{
  try
  {
    std::stoi("this is no int");
    assert(!"Should not get here");
  }
  catch (std::invalid_argument&)
  {
    assert("OK");
  }
}
```

## External links

 * [cppreference.com's page about std::stoi](http://en.cppreference.com/w/cpp/string/basic_string/stol)