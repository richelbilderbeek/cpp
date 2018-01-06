# ([C++](Cpp.md)) [IsOdd](CppIsOdd.md)

[IsOdd](CppIsOdd.md) is a [check](CppCheck.md) [code snippet](CppCodeSnippets.md) to determine
if an [int](CppInt.md) is odd.

```c++
bool IsOdd(const int i) noexcept
{
  return i % 2 != 0;
}
```

## Broken oddness check

Below is an example of an `IsOdd` implementation, that has a broken oddness check:

```c++
//Don't: broken oddness check
bool IsOdd(const int i) noexcept
{
  return i % 2 == 1; //Broken oddness check!
}
```

This implementation is broken, as it will not work for negative integers.

## External links

 * [Correct C++ 'is_odd' chapter](https://github.com/richelbilderbeek/correct_cpp_is_odd)
