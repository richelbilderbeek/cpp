# ([C++](Cpp.md)) [operator()](CppOperatorFunctionCall.md)

[operator()()](CppOperatorFunctionCall.md) (pronounciation: 'function
call operator') is the [operator](CppOperator.md) typically used by
[functors](CppFunctor.md).

## Example

```c++
#include <iostream>

struct Test
{
  //Definition of operator()
  void operator()() const
  { std::cout << ".\n";
  }
};

int main()
{
  //Create a Test
  Test t;

  //Call operator()
  t();
}
```

## Example: [GreaterThan](CppFunctorGreaterThan.md)

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

## [Advice](CppAdvice.md)

 * Use [operator()()](CppOperatorFunctionCall.md) for call semantics, for subscripting, and for selection based on a multiple values \[1\]

## [Reference](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 19.5. Advice. page 576: '\[2\] Use operator()() for call semantics, for subscripting, and for selection based on a multiple values'
