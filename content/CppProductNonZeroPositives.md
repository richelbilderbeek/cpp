[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ProductNonZeroPositives](CppProductNonZeroPositives.htm)
==========================================================================

 

[Math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to calculate the
product of all positive values in a [std::vector](CppVector.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppAccumulate_if.htm template   <   typename InputIterator,   typename ElementType,   typename BinaryOperation,   typename Predicate   > const ElementType std::accumulate_if(   InputIterator first,   const InputIterator last,   ElementType init,   const BinaryOperation binary_op,   const Predicate predicate) {   for (; first != last; ++first)     if (predicate(*first)) init = binary_op(init, *first);   return init; }  #include <functional> #include <vector>  //From http://www.richelbilderbeek.nl/CppProductNonZeroPositives.htm int ProductNonZeroPositives(const std::vector<int>& v) {   return ::std::accumulate_if(     v.begin(),     v.end(),     1,     std::multiplies<int>(),     std::bind2nd(std::greater<int>(),0)); } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
