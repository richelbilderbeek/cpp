# ([C++](Cpp.md)) [std::accumulate example 1: summing a std::vector of integers](CppAccumulateExample1.md)

[std::accumulate example 1: summing a std::vector of integers](CppAccumulateExample1.md) is a
[std::accumulate](CppStdAccumulate.md) example to sum a [std::vector](CppVector.md) of [integers](CppInt.md).

```c++
#include <cassert>
#include <numeric>
#include <vector>

int main()
{
  //Create a std::vector
  std::vector<int> v;
  for (int i=0; i!=10; ++i) { v.push_back(i); }

  //Sum the std::vector
  const int sum{std::accumulate(std::begin(v), std::end(v), 0)}; // '0' is the initial value

  //Assume std::accumulate works correctly
  assert(sum == 45);
}
```
