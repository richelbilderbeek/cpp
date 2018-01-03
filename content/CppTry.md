# ([C++](Cpp.md)) [try](CppTry.md)

[try](CppTry.md) is a [keyword](CppKeyword.md) to mark a
[try](CppTry.md)-block, in which an [exception](CppException.md) might
be [thrown](CppThrow.md). The [exception](CppException.md) can be
[caught](CppCatch.md) by the subsequent [catch](CppCatch.md)-block.

## [Example](CppExample.md): [std::stoi](CppStdStoi.md)

[std::stoi](CppStdStoi.md) [converts](CppConvert.md) a [std::string](CppStdString.md) to [integer](CppInt.md)

## [std::stoi](CppStdStoi.md) [example](CppExample.md): input can be converted to integer

```c++
#include <cassert>
#include <string>

int main()
{
  assert(std::stoi("123") == 123);
}
```

### [std::stoi](CppStdStoi.md) [example](CppExample.md): input is no integer

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

### [std::stoi](CppStdStoi.md) [example](CppExample.md): input is a too big integer

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

### [std::stoi](CppStdStoi.md) [example](CppExample.md): handle both exceptions

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

## [Advice](CppAdvice.md)

 * Minimize the use of [try](CppTry.md)-blocks [1].

## [Reference](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7. Advice. page 387: '\[16\] 'Minimize the use of try-blocks'
