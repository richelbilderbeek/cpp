[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SumNegatives](CppSumNegatives.htm)
====================================================

 

[SumNegatives](CppSumNegatives.htm) is a [math](CppMath.htm) [code
snippet](CppCodeSnippets.htm) to sum all negative elements in a
[container](CppContainer.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppAccumulate_if.htm template <   typename InputIterator,   typename  ElementType,   typename  Predicate > const ElementType accumulate_if(   InputIterator first,   const InputIterator last,   ElementType init,   const Predicate predicate) {   for (; first != last; ++first)     if (predicate(*first)) init += *first;   return init; }  //From http://www.richelbilderbeek.nl/CppSumNegatives.htm double SumNegatives(const std::vector<double>& v) {   return ::accumulate_if(v.begin(),v.end(),     0.0,std::bind2nd(std::less<double>(),0.0)); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
