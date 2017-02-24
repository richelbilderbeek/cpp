

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::accumulate](CppAccumulate.htm)
=====================================================

 

[Algorithm](CppAlgorithm.htm) to accumulate a range.
[std::accumulate](CppAccumulate.htm) is defined in
[numeric.h](CppNumericH.htm). Use [accumulate\_if](CppAccumulate_if.htm)
if you need to supply a [predicate](CppPredicate.htm).

 

-   [std::accumulate example 1: summing a std::vector of
    integers](CppAccumulateExample1.htm)
-   [std::accumulate example 2: summing a std::vector of a custom class
    using a C++11 lambda expression](CppAccumulateExample2.htm)

 

 

 

 

 

A [definition](CppDefinition.htm) of [std::accumulate](CppAccumulate.htm)
-------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <class InputIterator, class T> T accumulate (InputIterator first, InputIterator last, T init) {   while (first != last) init = init + *first++;   return init; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
