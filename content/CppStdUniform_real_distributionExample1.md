# std::uniform_real_distribution example 1

```c++
#include <cassert>
#include <iostream>
#include <random>

int main()
{
  const double min{0.0};
  const double max{1.0}; //Exclusive, 1.0 will never be drawn
  std::uniform_real_distribution<double> d(min,max);
  assert(d.min() == min);
  assert(d.max() == max);

  const int rng_seed{42};
  std::mt19937 rng(rng_seed);

  for (int i=0; i!=20; ++i)
  {
    std::cout << d(rng) << '\n';
  }
}
```