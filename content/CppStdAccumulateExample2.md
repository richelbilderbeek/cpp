# ([C++](Cpp.md)) [std::accumulate example 2: summing a std::vector of a custom class using a C++11 lambda expression](CppAccumulateExample2.md)

[std::accumulate example 2: summing a std::vector of a custom class
using a C++11 lambda expression](CppAccumulateExample2.md) is a
[std::accumulate](CppAccumulate.md) example to sum a
[std::vector](CppStdVector.md) of a custom [class](CppClass.md) using a
[C++11](Cpp11.md) [lambda expression](CppLambdaExpression.md).

```c++
#include <cassert>
#include <numeric>
#include <vector>

class my_class
{
public:
  my_class(const int x = 0) : m_x{x} {}
  int get_x() const noexcept { return m_x; }
private:
  int m_x;
};

int main()
{
  //Create a std::vector
  std::vector<my_class> v;
  for (int i=0; i!=10; ++i) { v.push_back(my_class(i)); }

  //Sum the std::vector using lambda expression
  const int sum{
    std::accumulate(
      std::begin(v), 
      std::end(v),
      0, // '0' is the initial value
      [](const int sum, const my_class& m)
      {
        return sum + m.get_x();
      }
    )
  };

  //Assume std::accumulate works correctly
  assert(sum == 45);
}
```
