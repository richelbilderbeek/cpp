# ([C++](Cpp.md)) [Append](CppAppend.md)

Appends two containers using the [algorithm](CppAlgorithm.md)
[std::copy](CppStdCopy.md) and a
[std::back\_inserter](CppStdBack_inserter.md)

```c++
#include <algorithm
#include <cassert>
#include <iostream>
#include <string>
#include <vector>

//From http://www.richelbilderbeek.nl
template <class Container>
void append(Container& toWhat, const Container& whatToAppend)
{
  std::copy(whatToAppend.begin(),whatToAppend.end(),std::back_inserter (toWhat));
}

//From http://www.richelbilderbeek.nl
int main()
{
  std::vector<int> v = {1, 4};
  const std::vector<int> to_append = {9, 16};
  append(v, to_append);
  const std::vector<int> expected = {1, 4, 9, 16};
  assert(v == expected);
}
```
