

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetSum (on a container)](CppGetSum.htm)
=========================================================

 

[GetSum](CppGetSum.htm) is a [container](CppContainer.htm) [code
snippet](CppCodeSnippets.htm) to sum all values in a one-dimensional
[container](CppContainer.htm). To sum all values in a two-dimensional
[matrix](CppMatrix.htm), [go to the GetSum (on matrix)
page](CppGetSumMatrix.htm).

 

There are multiple ways to perform [GetSum](CppGetSum.htm):

 

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

 

 

 

 

 

The algorithm way on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
----------------------------------------------------------------------------

 

This version is given as the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

-   [View 'The algorithm way on a std::vector&lt;int&gt;' of 'GetSum' in
    plain text](CppGetSumAlgoVector.txt)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSum.htm const int GetSum(const std::vector<int>& v) {   return std::accumulate(v.begin(),v.end(),0); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

The [for](CppFor.htm)-loop way on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
-----------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1,2\].

 

-   [View 'The for-loop way on a std::vector&lt;int&gt;' of 'GetSum' in
    plain text](CppGetSumForVector.txt)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSum.htm int GetSum(const std::vector<int>& v) {   const int sz = static_cast<int>(v.size());   const int sum = 0;   for (int i=0; i!=sz; ++i)   {     sum+=v[i];   }   return sum; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1 :
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
