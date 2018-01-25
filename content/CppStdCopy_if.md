# ([C++](Cpp.md)) [Copy_if](CppCopy_if.md)

[std::copy_if](CppStdCopy_if.md) was dropped from [C++98](Cpp98.md)'s 
[STL](CppStl.md) by accident and is added been added in [C++11](Cpp11.md).

## Example: copy if non-zero and positive

```c++
#include <algorithm>
#include <cassert>
#include <vector>

int main()
{
  const std::vector<int> v = {-9, -4, 0, 4, 9};
  std::vector<int> w;
  std::copy_if(
    std::begin(v), 
    std::end(v),
    std::back_inserter(w),
    [](const int i) { return i > 0; }
  );
  const std::vector<int> expected = { 4, 9 };
  assert(w == expected);
}
```

## C++98 implementation

Below is a possible [C++98](Cpp98.md) implementation:

```c++
template<typename In, typename Out, typename Pred>
Out copy_if(In first, In last, Out res, Pred Pr)
{
  while (first != last) 
  {
    if (Pr(*first))
      *res++ = *first;
    ++first;
  }
  return res;
}
```