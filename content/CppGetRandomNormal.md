# ([C++](Cpp.md)) [GetRandomNormal](CppGetRandomNormal.md)

[GetRandomNormal](CppGetRandomNormal.md) is a [random](CppStdRand.mdom.md)
[code snippet](CppCodeSnippets.md) to draw a value from a normal
distribution with average 'mean' and a standard deviation of 'sigma'.

```c++
#include <iostream>
#include <random>


///GetRandomNormal draws a random number from a normal distribution
///with average mean and standard deviation of sigma.
double GetRandomNormal(const double mean = 0.0, const double sigma = 1.0)
{
  //rd is used only to initialize mt with a truly random seed
  static std::random_device rd;
  //mt generates random numbers
  static std::mt19937 mt(rd());
  //d puts these random numbers in the correct distribution
  std::normal_distribution<double> d(mean,sigma);
  //The random value x gets drawn here
  const double x{d(mt)};
  return x;
}

int main()
{
  for (int i=0; i!=10; ++i)
  {
    const double x{GetRandomNormal()};
    std::cout << x << '\n';
  }
}
```