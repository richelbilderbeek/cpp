# std::discrete_distribution

A weighted distribution you can pick randomly from.

## Example

Suppose there are three categories with three weight: 

Category|Weight
---|---
0|0.1
1|0.2
2|0.3

The higher such a weight, the likelier the category is picked. In this example,
this is easy to calculate:

Category|Weight|Chance being picked
---|---|---
0|0.1| 0.1 / (0.1 + 0.2 + 0.3) = 1/6
1|0.2| 0.2 / (0.1 + 0.2 + 0.3) = 1/3
2|0.3| 0.3 / (0.1 + 0.2 + 0.3) = 1/2

In the code below, we pick 40 times, and will get around 1/6th the value
of zero, 1/3rd the value of one and half of the times the value two.

```
#include <random>
#include <iostream>
#include <vector>

int main()
{
  std::vector<double> weights{0.1,0.2,0.3};
  std::discrete_distribution<int> dist(
    std::begin(weights),
    std::end(weights)
  );
  std::mt19937 gen;
  for (int i=0; i!=40; ++i)
  {
    std::cout << dist(gen) << ' ';
  }
}
```