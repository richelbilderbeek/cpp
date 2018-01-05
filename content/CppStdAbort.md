([C++](Cpp.md)) [std::abort](CppStdAbort.md)

[std::abort](CppAbort.md) is an [STL](CppStl.md)
[function](CppFunction.md) to abort the program from any point.

## [Example](CppExample.md): an `on_abort` function

In the example below, [std::signal](CppStdSignal.md) sets the function
`on_abort` to handle a possible abort. Then [std::abort](CppAbort.md) is
called and handled by `on_abort`.

```c++
#include <cassert>
#include <csignal>
#include <iostream>

void on_abort(int)
{
  std::cout << "Abort" << '\n';
}

int main()
{
  std::signal(SIGABRT,on_abort);
  std::abort();
}
```