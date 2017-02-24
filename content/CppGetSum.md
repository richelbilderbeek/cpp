



 

 

 

 

 

([C++](Cpp.md)) [GetSum (on a container)](CppGetSum.md)
=========================================================

 

[GetSum](CppGetSum.md) is a [container](CppContainer.md) [code
snippet](CppCodeSnippets.md) to sum all values in a one-dimensional
[container](CppContainer.md). To sum all values in a two-dimensional
[matrix](CppMatrix.md), [go to the GetSum (on matrix)
page](CppGetSumMatrix.md).

 

There are multiple ways to perform [GetSum](CppGetSum.md):

 

-   The general algorithm way (best)
-   The algorithm way on a std::vector&lt;int&gt; (intermediate)
-   The for-loop way on a std::vector&lt;int&gt; (worst)

 

 

 

 

 

The general algorithm way
-------------------------

 

-   [View 'The general algorithm way' of 'GetSum' in plain
    text](CppGetSumGenAlgo.txt)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSum.htm template <class T> const T::value_type GetSum(const T& v) {   return std::accumulate(v.begin(), v.end(), static_cast<T::value_type>(0.0)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

The algorithm way on a [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
----------------------------------------------------------------------------

 

This version is given as the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

-   [View 'The algorithm way on a std::vector&lt;int&gt;' of 'GetSum' in
    plain text](CppGetSumAlgoVector.txt)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSum.htm const int GetSum(const std::vector<int>& v) {   return std::accumulate(v.begin(),v.end(),0); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

The [for](CppFor.md)-loop way on a [std::vector](CppVector.md)&lt;[int](CppInt.htm)&gt;
-----------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1,2\].

 

-   [View 'The for-loop way on a std::vector&lt;int&gt;' of 'GetSum' in
    plain text](CppGetSumForVector.txt)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSum.htm int GetSum(const std::vector<int>& v) {   const int sz = static_cast<int>(v.size());   const int sum = 0;   for (int i=0; i!=sz; ++i)   {     sum+=v[i];   }   return sum; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1 :
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops.'

 

 

 

 

 





 



