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

## Example: input is no integer

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
  catch (const std::invalid_argument&)
  {
    assert("OK");
  }
}
```

## Example: input is a too big integer

If the input is a too big [integer](CppInt.md),
a [std::out_of_range](CppStdOut_of_range.md) is
[thrown](CppThrow.md).

```c++
#include <cassert>
#include <stdexcept>
#include <string>

int main()
{
  try
  {
    std::stoi("12345678901234567890123456789012345678901234567890");
    assert(!"Should not get here");
  }
  catch (const std::out_of_range&)
  {
    assert("OK");
  }
}
```

## Example: handle both exceptions

```c++
#include <cassert>
#include <stdexcept>
#include <string>

int main()
{
  try
  {
    std::stoi("[your string here]");
    assert(!"Should not get here");
  }
  catch (const std::invalid_argument&)
  {
    assert("OK");
  }
  catch (const std::out_of_range&)
  {
    assert("OK");
  }
}
```

As an alternative, the [base](CppBaseClass.md) of both [exceptions](CppException.md) (called [std::exception](CppStdException.md)) can be used:

```c++
#include <cassert>
#include <stdexcept>
#include <string>

int main()
{
  try
  {
    std::stoi("[your string here]");
    assert(!"Should not get here");
  }
  catch (const std::exception&)
  {
    assert("OK");
  }
}
```

## External links

 * [cppreference.com's page about std::stoi](http://en.cppreference.com/w/cpp/string/basic_string/stol)