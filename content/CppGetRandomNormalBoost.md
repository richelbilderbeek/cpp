# ([C++](Cpp.md)) [GetRandomNormalBoost](CppGetRandomNormalBoost.md)

```c++
#include <iostream>

#include <boost/random/normal_distribution.hpp>
#include <boost/random/lagged_fibonacci.hpp>

///GetRandomNormalBoost draws a random number from a normal distribution
///with average mean and standard deviation of sigma.
double GetRandomNormalBoost(const double mean = 0.0, const double sigma = 1.0)
{
  static boost::normal_distribution<double> norm_dist(mean, sigma);
  static boost::lagged_fibonacci19937 engine;
  const double value{norm_dist(engine)};
  return value;
}

int main()
{
  for (int i=0; i!=10; ++i)
  {
    const double x{GetRandomNormalBoost()};
    std::cout << x << '\n';
  }
}
```
