# ([C++](Cpp.md)) [AssertExample3](CppAssertExample3.md)

[assert example 3: a user defined assert](CppAssertExample3.md) shows an example of a user-defined
[assert](CppAssert.md). 

The assert macro is named `Assert`. Like the standard assert, is is removed from code in release mode (by defining `NDEBUG`).
Unlike the standard assert, failed assertions are also written to a file `assert.log`.

```c++
#ifndef MY_ASSERT_H
#define MY_ASSERT_H

#ifdef NDEBUG
  #define Assert(x) ((void)0)
#else
  #include <fstream>
  #include <iostream>
  #include <stdexcept>

  #define Assert(x)                \
  if (!(x))                        \
  {                                \
    std::cout                      \
      << "ERROR!! Assertion "      \
      <<  std::string (#x)         \
      <<  " failed\n on line "     \
      <<  (__LINE__)               \
      <<  "\n in file "            \
      <<  __FILE__                 \
      << std::endl;                \
    std::ofstream f("assert.log"); \
    f                              \
      << "ERROR!! Assertion "      \
      <<  std::string (#x)         \
      <<  " failed\n on line "     \
      <<  (__LINE__)               \
      <<  "\n in file "            \
      <<  __FILE__                 \
      << std::endl;                \
    f.close();                     \
      throw std::logic_error(      \
        "Assertion failed");       \
  }

#endif

#endif // MY_ASSERT_H
```