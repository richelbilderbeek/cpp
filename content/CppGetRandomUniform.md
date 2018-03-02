# ([C++](Cpp.md)) [GetRandomUniform](CppGetRandomUniform.md)

[GetRandomUniform](CppGetRandomUniform.md) is a [random](CppStdRand.mdom.md)
[code snippet](CppCodeSnippets.md) to draw a value from 0.0 to (and not
including) 1.0. All values have an equal likelyhood to be drawn.

## Example 1: Quick and dirty

If you just need a quick random number:

```c++
double GetRandomUniform() noexept
{
  return static_cast<double>(std::rand())/static_cast<double>(RAND_MAX);
}
```

## Example 2: Good

Do use this in academic simulations.

```c++
#include <iostream>
#include <random>

double GetRandomUniform(const double from = 0.0, const double to = 1.0)
{
  //rd is used only to initialize mt with a truly random seed
  static std::random_device rd;
  //mt generates random numbers
  static std::mt19937 mt(rd());
  //d puts these random numbers in the correct distribution
  std::uniform_real_distribution<double> d(from,to);
  //The random value x gets drawn here
  const double x{d(mt)};
  return x;
}

int main()
{
  for (int i=0; i!=10; ++i)
  {
    const double x{GetRandomUniform()};
    std::cout << x << '\n';
  }
}
```
