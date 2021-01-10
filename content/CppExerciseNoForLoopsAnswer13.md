# ([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#13](CppExerciseNoForLoopsAnswer13.md)

This is the answer of [Exercise \#9: No for-loops](CppExerciseNoForLoops.md).

## Question \#13: [MakeAbs](CppMakeAbs.md)

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::transform](CppStdTransform.md)
-   your own [std::unary\_function](CppStdUnary_function.md)


```c++
#include <cmath>
#include <vector>
 
void MakeAbs(std::vector<int>& v)
{
  const int sz = v.size();
  for (int i=0; i!=sz; ++i)
  {
    v[i] = std::abs(v[i]);
  }
}
```

## Answer

```c++
#include <algorithm>
#include <cmath>
#include <functional>
#include <vector>

void MakeAbs(std::vector<int>& v)
{
  std::transform(
    v.begin(), 
    v.end(), 
    v.begin(), 
    std::ptr_fun<int,int>(std::abs)
  );
}
```

Much thanks to Andrei Kuzmenko for pointing out
that `std::abs` is an overloaded function, not a template function,
due to which `std::transform()` cannot 
determine the required variant of 
std::abs() without the programmer's help.

