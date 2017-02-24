
 

 

 

 

 

([C++](Cpp.md)) [std::accumulate](CppAccumulate.md)
=====================================================

 

[Algorithm](CppAlgorithm.md) to accumulate a range.
[std::accumulate](CppAccumulate.md) is defined in
[numeric.h](CppNumericH.md). Use [accumulate\_if](CppAccumulate_if.md)
if you need to supply a [predicate](CppPredicate.md).

 

-   [std::accumulate example 1: summing a std::vector of
    integers](CppAccumulateExample1.md)
-   [std::accumulate example 2: summing a std::vector of a custom class
    using a C++11 lambda expression](CppAccumulateExample2.md)

 

 

 

 

 

A [definition](CppDefinition.md) of [std::accumulate](CppAccumulate.md)
-------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <class InputIterator, class T> T accumulate (InputIterator first, InputIterator last, T init) {   while (first != last) init = init + *first++;   return init; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

