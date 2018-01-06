([C++](Cpp.md)) [IsPrime](CppIsPrime.md)

[IsPrime](CppIsPrime.md) is a 
[Check](CppCheck.md) [code snippet](CppCodeSnippets.md) to determine
if an [int](CppInt.md) is prime.

```c++
#include <cmath>

bool IsPrime(const int x) noexcept
{
  const int max{
    static_cast<int>(
      std::sqrt(static_cast<double>(x))
    ) + 1
  };

  for (int i=2; i!=max; ++i)
  {
    if (x % i == 0) return false;
  }

  return true;
}
```


## External links

 * [Correct C++ 'is_prime' chapter](https://github.com/richelbilderbeek/correct_cpp_is_prime)

