# ([C++](Cpp.md)) [std::accumulate](CppStdAccumulate.md)

[std::accumulate](CppStdAccumulate.md) is an [STL](CppStl.md) [algorithm](CppAlgorithm.md) 
to accumulate a range. [std::accumulate](CppStdAccumulate.md) is defined in [numeric.h](CppNumericH.md). 


 * [std::accumulate example 1: summing a std::vector of integers](CppStdAccumulateExample1.md)
 * [std::accumulate example 2: summing a std::vector of a custom class using a C++11 lambda expression](CppStdAccumulateExample2.md)
 * [accumulate_if](CppAccumulate_if.md): `accumulate` with a [predicate](CppPredicate.md).

## A [definition](CppDefinition.md) of [std::accumulate](CppStdAccumulate.md)

```c++
template <class InputIterator, class T>
T accumulate (InputIterator first, InputIterator last, T init)
{
  while (first != last) init = init + *first++;
  return init;
}
```

## External links

 * [cppreference's `std::accumulate` page](http://en.cppreference.com/w/cpp/algorithm/accumulate)
 * [C++ Weekly, episode 98: Precision Loss with Accumulate](https://www.youtube.com/watch?v=vLozydgjHrc)