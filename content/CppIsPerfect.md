# ([C++](Cpp.md)) [IsPerfect](CppIsPerfect.md)

[IsPerfect](CppIsPerfect.md) is a 
[code snippet](CppCodeSnippets.md) to [check](CppCheck.md) if a number is perfect.

```c++
#include <cassert>

///GetSumProperDivisors returns the sum of all proper divisors of x
int GetSumProperDivisors(const int x)
{
  if (x < 1) 
  {
    throw std::invalid_argument("x must be at least 1")
  }
  assert(x > 0);
  int sum = 0;
  if (x <= 0) return 0;
  const int j{(x / 2) + 1};
  for (int i=1; i!=j; ++i)
  {
    //Is i a proper divisor of x?
    if (x % i == 0)
    {
      sum+=i;
    }
  }
  return sum;
}

///IsPerfect determines if x is a perfect number
bool IsPerfect(const int x) noexcept
{
  if (x < 1) 
  {
    return false;
  }
  return GetSumProperDivisors(x) == x;
}

int main()
{
  assert(!IsPerfect( 1));
  assert(!IsPerfect( 2));
  assert(!IsPerfect( 3));
  assert(!IsPerfect( 4));
  assert(!IsPerfect( 5));
  assert( IsPerfect( 6));
  assert(!IsPerfect( 7));
  assert(!IsPerfect( 8));
  assert(!IsPerfect( 9));
  assert(!IsPerfect(10));
  assert(!IsPerfect(11));
  assert(!IsPerfect(12));
  assert(!IsPerfect(13));
  assert(!IsPerfect(14));
  assert(!IsPerfect(15));
  assert(!IsPerfect(16));
  assert(!IsPerfect(17));
  assert(!IsPerfect(18));
  assert(!IsPerfect(19));
  assert(!IsPerfect(20));
  assert(!IsPerfect(21));
  assert(!IsPerfect(22));
  assert(!IsPerfect(23));
  assert(!IsPerfect(24));
  assert(!IsPerfect(25));
  assert(!IsPerfect(26));
  assert(!IsPerfect(27));
  assert( IsPerfect(28));
  assert(!IsPerfect(29));
  assert(!IsPerfect(30));
  assert(!IsPerfect(31));
  assert(!IsPerfect(32));
  assert(!IsPerfect(33));
  assert(!IsPerfect(34));
  assert(!IsPerfect(35));
  assert(!IsPerfect(36));
}
```

## External links

 * [Correct C++ 'is_perfect' chapter](https://github.com/richelbilderbeek/correct_cpp_is_perfect)

