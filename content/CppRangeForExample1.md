## ([C++](Cpp.md)) [RangeForExample1](CppRangeForExample1.md)

```c++
#include <iostream>
#include <vector>

int main()
{
  std::vector<int> v = { 1,2,3,4,5,6,7,8,9 };
  for (int& i: v)
  {
    i*=i;
  }
  for (const int i: v)
  {
    std::cout << i << ' ';
  }
  std::cout << '\n';
}
```

Screen output:

```
1 4 9 16 25 36 49 64 81
```
