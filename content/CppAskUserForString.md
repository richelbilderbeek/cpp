# ([C++](Cpp.md)) [AskUserForString](CppAskUserForString.md)

[AskUserForString](CppAskUserForString.md) is a [user
I/O](CppUserIo.md) [std::string](CppStdString.md) [code
snippet](CppCodeSnippets.md) to ask the user for a single-line input,
which is then converted to [std::string](CppStdString.md).

```
#include <iostream>
#include <string>

std::string AskUserForString() noexcept
{
  std::string s;
  std::getline(std::cin,s);
  return s;
}
```
