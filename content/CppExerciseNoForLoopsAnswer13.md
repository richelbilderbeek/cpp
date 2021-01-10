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

template <class T> struct Abs : public std::unary_function<T,T>
{
  const T operator()(const T& x) const { return std::abs(x); }
};

void MakeAbs(std::vector<int>& v)
{
  std::transform(v.begin(),v.end(),v.begin(),Abs<int>());
}
```

Note: I did not find any way to refrain from writing a
[functor](CppFunctor.md) (for example, by using
[std::ptr\_fun](CppStdPtr_fun.md)) as shown in the lines below...

```c++
std::transform(v.begin(),v.end(),v.begin(),std::abs); //Does not work
std::transform(v.begin(),v.end(),v.begin(),&std::abs); //Does not work
std::transform(v.begin(),v.end(),v.begin(),std::ptr_fun(&std::abs)); //Does not work
std::transform(v.begin(),v.end(),v.begin(),std::ptr_fun(std::abs)); //Does not work
```

