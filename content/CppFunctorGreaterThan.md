# [GreaterThan](CppFunctorGreaterThan.md)

[GreaterThan](CppFunctorGreaterThan.md) is an example [functor](CppFunctor.md).

```c++
#include <algorithm>
#include <cassert>
#include <functional>
#include <numeric>
#include <vector>

struct GreaterThan : public std::binary_function<int,int,int>
{
  explicit GreaterThan(const int any_x = 0) : x(any_x) {}
  int operator()(const int sum, const int y) const noexcept
  { return sum + (y <= x ? 0 : y);
  }

  private:
  int x;
};

std::vector<int> CreateVector() noexcept
{
  return { -1, 0, 1, 2, 3, 4 };
}

int main()
{
  const std::vector<int> v = CreateVector();
  assert(std::accumulate(std::begin(v),std::end(v),0,GreaterThan(5))==0);
  assert(std::accumulate(std::begin(v),std::end(v),0,GreaterThan(4))==0);
  assert(std::accumulate(std::begin(v),std::end(v),0,GreaterThan(3))==4);
  assert(std::accumulate(std::begin(v),std::end(v),0,GreaterThan(2))==7);
  assert(std::accumulate(std::begin(v),std::end(v),0,GreaterThan(1))==9);
  assert(std::accumulate(std::begin(v),std::end(v),0,GreaterThan(0))==10);
}
```
