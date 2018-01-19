# std::chrono::stead_clock

Adapted from [cplusplus.com's page about std::chrono::steady_clock](http://www.cplusplus.com/reference/chrono/steady_clock/):

```c++
#include <chrono>
#include <iostream>

int main ()
{
  const auto t1 = std::chrono::steady_clock::now();

  // Kill some time
  for (int i=0; i!=1000000; ++i)
  {
    std::cout.flush();
  }

  const auto t2 = std::chrono::steady_clock::now();

  const auto time_span = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);

  std::cout << "It took " << time_span.count() << " milliseconds.\n";
}
```