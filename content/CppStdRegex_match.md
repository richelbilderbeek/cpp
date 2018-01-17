# ([C++](Cpp.md)) ![STL](PicSTL.png) [std::regex_match](CppStdRegex_match.md)

[std::regex_match](CppStdRegex_match.md) is an [STL](CppStl.md)
[function](CppFunction.md) for testing if a 
[std::string](CppStdString.md) matches a [std::regex](CppStdRegex.md).

## Example

```c++
#include <cassert>
#include <regex>
#include <string>

int main()
{
  assert(!std::regex_match("", std::regex("[[:digit:]]"))); //One
  assert( std::regex_match("", std::regex("[[:digit:]]?"))); //Zero or one
  assert(!std::regex_match("", std::regex("[[:digit:]]+"))); //One or more
  assert( std::regex_match("", std::regex("[[:digit:]]*"))); //Zero or more
  assert( std::regex_match("", std::regex("[[:digit:]]{0}"))); //Zero

  assert(std::regex_match("1", std::regex("[[:digit:]]" ))); //One
  assert(std::regex_match("1", std::regex("[[:digit:]]?"))); //Zero or one
  assert(std::regex_match("1", std::regex("[[:digit:]]+"))); //One or more
  assert(std::regex_match("1", std::regex("[[:digit:]]*"))); //Zero or more
  assert(std::regex_match("1", std::regex("[[:digit:]]{1}"))); //One

  assert(!std::regex_match("12", std::regex("[[:digit:]]"))) ; //One
  assert(!std::regex_match("12", std::regex("[[:digit:]]?"))); //Zero or one
  assert( std::regex_match("12", std::regex("[[:digit:]]+"))); //One or more
  assert( std::regex_match("12", std::regex("[[:digit:]]*"))); //Zero or more
  assert( std::regex_match("12", std::regex("[[:digit:]]{2}"))); //Two

}
```
